project(LLVM_exp2_loop_processing) 

set(Outputname "LLVM_exp2_loop_processing")

cmake_minimum_required(VERSION 3.10) 

find_package(LLVM REQUIRED CONFIG) 

message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}") 
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}") 

# Needed to use support library 

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti -std=c++14") 

include_directories(${LLVM_INCLUDE_DIRS}) 
include_directories(./ ../../Implementations/ ../../Implementations/HI_FindFunctions ../../Implementations/HI_print ../../Implementations/HI_DependenceList ../../Implementations/HI_SysExec)
link_directories("../LLVM_Learner_Libs")
set(MAKE_CMD "../../../BuildLibs.sh")
MESSAGE("COMMAND: ${MAKE_CMD} ")
execute_process(COMMAND ${MAKE_CMD}
   RESULT_VARIABLE CMD_ERROR
      OUTPUT_FILE CMD_OUTPUT)
add_definitions(${LLVM_DEFINITIONS}) 

add_executable(${Outputname} LLVM_exp2_loop_processing.cc) 

llvm_map_components_to_libnames(llvm_libs support core irreader engine nativecodegen) 

target_link_libraries(${Outputname} pthread dl HI_FindFunctions HI_print HI_DependenceList HI_SysExec) #link llvm component 

# set(llvm_libs "")

#link llvm library 
target_link_libraries(${Outputname} 
LLVMLTO 
LLVMPasses 
LLVMObjCARCOpts 
LLVMMIRParser 
LLVMSymbolize 
LLVMDebugInfoPDB 
LLVMDebugInfoDWARF 
LLVMCoverage 
LLVMMCA 
LLVMTableGen 
LLVMDlltoolDriver 
LLVMXRay 
LLVMOrcJIT 
LLVMMCJIT 
LLVMLineEditor 
LLVMInterpreter 
LLVMExecutionEngine 
LLVMRuntimeDyld 
LLVMCodeGen 
LLVMTarget 
LLVMCoroutines 
LLVMipo 
LLVMInstrumentation 
LLVMVectorize 
LLVMScalarOpts 
LLVMLinker 
LLVMIRReader 
LLVMAsmParser 
LLVMInstCombine 
LLVMBitWriter 
LLVMAggressiveInstCombine 
LLVMTransformUtils 
LLVMAnalysis 
LLVMProfileData 
LLVMObject 
LLVMMCParser 
LLVMMC 
LLVMDebugInfoCodeView 
LLVMDebugInfoMSF 
LLVMBitReader 
LLVMCore 
LLVMBinaryFormat 
LLVMSupport 
LLVMDemangle
) 

# message(STATUS "LLVM Libraries0 are: ${llvm_libs}") 
# message(STATUS "LLVM Libraries1 are: ${ARG_LINK_COMPONENTS}") 
# message(STATUS "LLVM Libraries2 are: ${LLVM_LINK_COMPONENTS}") 
# message(STATUS "LLVM Definitions are: ${LLVM_PACKAGE_VERSION}") 
