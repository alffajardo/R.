### Introduction to neurohacking in R

setwd("D:/Users/Alfonso/Documentos/R/neurohacking_r/")
getwd()
library(oro.dicom)
library(oro.nifti)
setwd("Neurohacking_data/BRAINIX/DICOM/FLAIR/")
slice=readDICOM(("IM-0001-0011.dcm")) ### Visulalizar una rebanada en una imagen
class(slice)
names(slice)
class(slice$hdr)
class(slice$img)

class(slice$hdr[[1]])
class(slice$img[[1]])
dim(slice$img[[1]])

### Visualizar una rebanada del tejido

image(slice$img[[1]],col=gray(0:64/64))

## transporner los datos usando la función t() perminte modificar la forma en que se visualizar la imagen
## de esta forma es posible verla con otra orientación 

d=dim(t(slice$img[[1]]))
image(1:d[1],1:d[2],t(slice$img[[1]]),col=gray(0:64/64))

#### Extraer una serie de pixeles
# en este caso se muestran  25 voxeles coresondientes a las dimenciones 101 a 105 en y
## por las dimensiones 121 a 125 en x

slice$img[[1]][101:105,121:125]

# Graficar todos los pixeles de la imagen
hist(slice$img[[1]][,],
breaks=50,xlab = "Flair",col=rgb(0,0,1,),
prob=T,main='densidad de pixeles')

#### analizar la información del header

hdr <- slice$hdr[[1]]
names(hdr)
hdr$name
hdr[hdr$name=="PixelSpacing","value"]
hdr[hdr$name=="FlipAngle",]

setwd("../../DICOM/")

### leer todas las rebanadas de un cerebro

all_slices_T1 <- readDICOM("T1/")
dim(all_slices_T1$img[[11]])
T1hdr <- all_slices_T1$hdr[[11]]
T1hdr[T1hdr$name=="PixelSpacing","value"]
image(all_slices_T1$img[[11]])
 image(all_slices_T1$img[[11]],col=gray(1:64/64))
image(t(all_slices_T1$img[[11]]),col=gray(1:64/64))

##### Leer objetos en formato NIFTI
# con la funcion de oro.dicom dicom2nifti se puede convertir un archivo dcm en un nii.gz
nii_T1<-dicom2nifti(all_slices_T1)
d <-dim(nii_T1)
image(1:d[1],1:d[2],nii_T1[,,11],col=gray(0:100/100),xlab='',ylab='')

### para guardar y leer imagenes en formato nifti pueden usarse las funciones
#writeNIfTI() y readNIfTI() del paquete oro.nifti
setwd("../NIfTI/")
# salvamos el archivo nifti recientemente creado
fname <- "Output_3D_file"
writeNIfTI(nim =nii_T1,filename=fname)

list.files(getwd(),pattern = "Output*")
list.files(getwd(),pattern="T")

### leer el header de una una imagen nifti
fname="Output_3D_File"
print({nii_T1<-readNIfTI(fname = fname)})

## Visualizar la imagen
d <- dim(nii_T1)
image(1:d[1],1:d[2],nii_T1[,,11],xlab="",ylab="",)

### otra forma más sencilla de hacerlo

image(nii_T1,z=11,plot.type="single")

### realizar una vista ortografica de una imagen con la funcion orthographic() del paquete oro.nifti

orthographic(nii_T1,xyz=c(200,220,11))

### Grafica de los voxeles

par(mfrow=c(1,2));
o <- par(mar=c(4,4,0,0))
hist(nii_T1,breaks = 75,prob=T,xlab="T1 intensities",
col=rgb(0,0,1,1/2),main = "")

hist(nii_T1[nii_T1 >20], breaks = 75, prob=T,
xlab="non zero T1 intensities",col=rgb(0,0,1,1/2),main="")

### Crear un vector lógico
is_btw_300_400 <- ( (nii_T1>300) & (nii_T1<400))
nii_T1_mask <- nii_T1
nii_T1_mask[!is_btw_300_400]=NA
overlay(nii_T1,nii_T1_mask,z=11,plot.type="single")
### si quisieramos ver todas las rebanadas simplemente se teclea overlay(nii_t1,nii_T1_mask)

#### crear una máscara

### nota: para una máscara solo del cerebro deben quitarse hueso y meninges

mask <- (nii_T1[nii_T1>20]=1)
masked_T1 <- nii_T1*mask 






