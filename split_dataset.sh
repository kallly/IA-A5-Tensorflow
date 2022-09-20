N=100

rm -rf dataset;
cd Dataset/Painting;
mkdir -p ../../dataset/painting;
cp $(find . -maxdepth 1 -type f | sort | head -$N) ../../dataset/painting;
cd ../..;

cd Dataset/Photo;
mkdir -p ../../dataset/photo;
cp $(find . -maxdepth 1 -type f | sort | head -$N) ../../dataset/photo;
cd ../..;

cd Dataset/Schematics;
mkdir -p ../../dataset/schematics;
cp $(find . -maxdepth 1 -type f | sort | head -$N) ../../dataset/schematics;
cd ../..;

cd Dataset/Sketch;
mkdir -p ../../dataset/sketch;
cp $(find . -maxdepth 1 -type f | sort | head -$N) ../../dataset/sketch;
cd ../..;

cd Dataset/Text;
mkdir -p ../../dataset/text;
cp $(find . -maxdepth 1 -type f | sort | head -$N) ../../dataset/text;
cd ../..;



rm -rf validation;
cd Dataset/Painting;
mkdir -p ../../validation/painting;
cp $(find . -maxdepth 1 -type f | sort | tail -$N) ../../validation/painting;
cd ../..;

cd Dataset/Photo;
mkdir -p ../../validation/photo;
cp $(find . -maxdepth 1 -type f | sort | tail -$N) ../../validation/photo;
cd ../..;

cd Dataset/Schematics;
mkdir -p ../../validation/schematics;
cp $(find . -maxdepth 1 -type f | sort | tail -$N) ../../validation/schematics;
cd ../..;

cd Dataset/Sketch;
mkdir -p ../../validation/sketch;
cp $(find . -maxdepth 1 -type f | sort | tail -$N) ../../validation/sketch;
cd ../..;

cd Dataset/Text;
mkdir -p ../../validation/text;
cp $(find . -maxdepth 1 -type f | sort | tail -$N) ../../validation/text;
cd ../..;