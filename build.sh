cd darknet
git reset --hard
patch -p1 -i ../Makefile.patch
mkdir weights
wget http://pjreddie.com/media/files/tiny.weights -P weights
emmake make
sed -in-place 's/PthreadWorkerInit:PthreadWorkerInit});PThread.unusedWorkerPool.push/PthreadWorkerInit:PthreadWorkerInit},[HEAPU8.buffer]);PThread.unusedWorkerPool.push/' darknet.js