GPUCC = "C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.1\bin\nvcc.exe"
CPUCCDIR = "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.29.30037\bin\HostX86\x64"
CUDAToolkit = "C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.1\include"
OBJ = aysncAPI.obj
SRC = asyncAPI.cu
EXE = asyncAPI.exe

build:
	$(GPUCC) -ccbin $(CPUCCDIR) -c -DWIN32 -D_CONSOLE -D_MBCS -Xcompiler /EHsc,/W3,/nologo,/O2,/Zi,/MT -I$(CUDAToolkit) -Icommon/inc -o $(OBJ) $(SRC)
	$(GPUCC) --run $(OBJ) -o $(EXE)