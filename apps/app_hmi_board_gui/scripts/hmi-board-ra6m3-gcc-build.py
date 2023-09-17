
import os
import sys

out_path = "..\\..\\..\\out\\app_hmi_board_gui(ra6m3-hmi)\\"
build_path = "..\\..\\..\\build"
mcu_path = "..\\..\\mcu\\ra6m3-hmi\\"
build_log_file = mcu_path + "build.log"
gcc_cmd_file_alone = "gcc.cmd"
gcc_cmd_file = mcu_path + gcc_cmd_file_alone

arm_gcc_str = "arm-none-eabi-gcc "
arm_objcopy_str = "arm-none-eabi-objcopy "
end_str = " -lc -lm"

def extract_string_between(file_path, start_str, end_str):
    content = ""
    with open(file_path, 'r') as file:
        file_content = file.read()
        start_index = file_content.find(start_str)
        end_index = file_content.find(end_str)
        if start_index != -1 and end_index != -1:
            start_index += len(start_str)
            content = file_content[start_index:end_index]
    return content

def save_gcc_cmd_list(build_log_file, gcc_cmd_file):
    print(build_log_file)
    print(gcc_cmd_file)
    extracted_content = extract_string_between(build_log_file, arm_gcc_str, end_str)
    extracted_content = extracted_content.replace('/', "\\\\").replace('\\', "\\\\")
    #print(extracted_content)
    with open(gcc_cmd_file, 'w') as file:
        file.write(extracted_content + end_str)

if __name__ == '__main__':
    sys.chdir(build_path)
    os.system("scons --verbose > " + build_log_file)
    save_gcc_cmd_list(build_log_file, gcc_cmd_file)
    os.chdir(mcu_path)
    os.system(arm_gcc_str + "@" + gcc_cmd_file_alone)
    os.system(arm_objcopy_str + " -O ihex " + out_path + "rtthread.elf" + " " + out_path + "rtthread.hex")
    os.system("ls " + out_path)