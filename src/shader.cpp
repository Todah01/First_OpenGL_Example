#include "shader.h"

ShaderUPtr Shader::CreateFromFile(const std::string& filename, GLenum shaderType) {
    auto shader = ShaderUPtr(new Shader());
    if (!shader->LoadFile(filename, shaderType))
        return nullptr;
    return std::move(shader);
}

Shader::~Shader() {
    if (m_shader) {
        glDeleteShader(m_shader);
    }
}

bool Shader::LoadFile(const std::string& filename, GLenum shaderType) {
    auto result = LoadTextFile(filename);
    if (!result.has_value())
        return false;

    auto& code = result.value(); // &를 붙이지 않는다면 value() 의 메모리 카피가 일어난다.
    const char* codePtr = code.c_str();
    int32_t codeLength = (int32_t)code.length();

    // uint8_t = unsigned char
    // int8_t = char
    // uint16_t = unsigned short
    // int16_t = short
    // uint32_t = unsigned int
    // int32_t = int
    // uint64_t = unsigned long long
    // int64_t = long long

    // create and compile shader
    m_shader = glCreateShader(shaderType); // 정수타입
    glShaderSource(m_shader, 1, (const GLchar* const*)&codePtr, &codeLength); // 여러개의 Shader를 받을 수 있기 때문에 복잡한 구조를 가진다.
    glCompileShader(m_shader);

    // check compile error
    int success = 0;
    glGetShaderiv(m_shader, GL_COMPILE_STATUS, &success); // iv = int vector(pointer를 변수로 넣어야한다는 것을 의미한다.) , m_shader의 shader 상태값에 대한 성공여부를 확인한다.
    if (!success) {
        char infoLog[1024];
        glGetShaderInfoLog(m_shader, 1024, nullptr, infoLog); // Shader에 어떤 오류가 생겼는지를 확인하는 함수.
        SPDLOG_ERROR("failed to compile shader: \"{}\"", filename);
        SPDLOG_ERROR("reason: {}", infoLog);
        return false;
    }
    return true;
}

