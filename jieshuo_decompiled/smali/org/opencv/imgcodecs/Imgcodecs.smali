.class public Lorg/opencv/imgcodecs/Imgcodecs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IMREAD_ANYCOLOR:I = 0x4

.field public static final IMREAD_ANYDEPTH:I = 0x2

.field public static final IMREAD_COLOR:I = 0x1

.field public static final IMREAD_COLOR_BGR:I = 0x1

.field public static final IMREAD_COLOR_RGB:I = 0x100

.field public static final IMREAD_GRAYSCALE:I = 0x0

.field public static final IMREAD_IGNORE_ORIENTATION:I = 0x80

.field public static final IMREAD_LOAD_GDAL:I = 0x8

.field public static final IMREAD_REDUCED_COLOR_2:I = 0x11

.field public static final IMREAD_REDUCED_COLOR_4:I = 0x21

.field public static final IMREAD_REDUCED_COLOR_8:I = 0x41

.field public static final IMREAD_REDUCED_GRAYSCALE_2:I = 0x10

.field public static final IMREAD_REDUCED_GRAYSCALE_4:I = 0x20

.field public static final IMREAD_REDUCED_GRAYSCALE_8:I = 0x40

.field public static final IMREAD_UNCHANGED:I = -0x1

.field public static final IMWRITE_AVIF_DEPTH:I = 0x201

.field public static final IMWRITE_AVIF_QUALITY:I = 0x200

.field public static final IMWRITE_AVIF_SPEED:I = 0x202

.field public static final IMWRITE_EXR_COMPRESSION:I = 0x31

.field public static final IMWRITE_EXR_COMPRESSION_B44:I = 0x6

.field public static final IMWRITE_EXR_COMPRESSION_B44A:I = 0x7

.field public static final IMWRITE_EXR_COMPRESSION_DWAA:I = 0x8

.field public static final IMWRITE_EXR_COMPRESSION_DWAB:I = 0x9

.field public static final IMWRITE_EXR_COMPRESSION_NO:I = 0x0

.field public static final IMWRITE_EXR_COMPRESSION_PIZ:I = 0x4

.field public static final IMWRITE_EXR_COMPRESSION_PXR24:I = 0x5

.field public static final IMWRITE_EXR_COMPRESSION_RLE:I = 0x1

.field public static final IMWRITE_EXR_COMPRESSION_ZIP:I = 0x3

.field public static final IMWRITE_EXR_COMPRESSION_ZIPS:I = 0x2

.field public static final IMWRITE_EXR_DWA_COMPRESSION_LEVEL:I = 0x32

.field public static final IMWRITE_EXR_TYPE:I = 0x30

.field public static final IMWRITE_EXR_TYPE_FLOAT:I = 0x2

.field public static final IMWRITE_EXR_TYPE_HALF:I = 0x1

.field public static final IMWRITE_GIF_COLORTABLE:I = 0x405

.field public static final IMWRITE_GIF_COLORTABLE_SIZE_128:I = 0x7

.field public static final IMWRITE_GIF_COLORTABLE_SIZE_16:I = 0x4

.field public static final IMWRITE_GIF_COLORTABLE_SIZE_256:I = 0x8

.field public static final IMWRITE_GIF_COLORTABLE_SIZE_32:I = 0x5

.field public static final IMWRITE_GIF_COLORTABLE_SIZE_64:I = 0x6

.field public static final IMWRITE_GIF_COLORTABLE_SIZE_8:I = 0x3

.field public static final IMWRITE_GIF_DITHER:I = 0x403

.field public static final IMWRITE_GIF_FAST_FLOYD_DITHER:I = 0x2

.field public static final IMWRITE_GIF_FAST_NO_DITHER:I = 0x1

.field public static final IMWRITE_GIF_LOOP:I = 0x400

.field public static final IMWRITE_GIF_QUALITY:I = 0x402

.field public static final IMWRITE_GIF_SPEED:I = 0x401

.field public static final IMWRITE_GIF_TRANSPARENCY:I = 0x404

.field public static final IMWRITE_HDR_COMPRESSION:I = 0x50

.field public static final IMWRITE_HDR_COMPRESSION_NONE:I = 0x0

.field public static final IMWRITE_HDR_COMPRESSION_RLE:I = 0x1

.field public static final IMWRITE_JPEG2000_COMPRESSION_X1000:I = 0x110

.field public static final IMWRITE_JPEGXL_DECODING_SPEED:I = 0x283

.field public static final IMWRITE_JPEGXL_DISTANCE:I = 0x282

.field public static final IMWRITE_JPEGXL_EFFORT:I = 0x281

.field public static final IMWRITE_JPEGXL_QUALITY:I = 0x280

.field public static final IMWRITE_JPEG_CHROMA_QUALITY:I = 0x6

.field public static final IMWRITE_JPEG_LUMA_QUALITY:I = 0x5

.field public static final IMWRITE_JPEG_OPTIMIZE:I = 0x3

.field public static final IMWRITE_JPEG_PROGRESSIVE:I = 0x2

.field public static final IMWRITE_JPEG_QUALITY:I = 0x1

.field public static final IMWRITE_JPEG_RST_INTERVAL:I = 0x4

.field public static final IMWRITE_JPEG_SAMPLING_FACTOR:I = 0x7

.field public static final IMWRITE_JPEG_SAMPLING_FACTOR_411:I = 0x411111

.field public static final IMWRITE_JPEG_SAMPLING_FACTOR_420:I = 0x221111

.field public static final IMWRITE_JPEG_SAMPLING_FACTOR_422:I = 0x211111

.field public static final IMWRITE_JPEG_SAMPLING_FACTOR_440:I = 0x121111

.field public static final IMWRITE_JPEG_SAMPLING_FACTOR_444:I = 0x111111

.field public static final IMWRITE_PAM_FORMAT_BLACKANDWHITE:I = 0x1

.field public static final IMWRITE_PAM_FORMAT_GRAYSCALE:I = 0x2

.field public static final IMWRITE_PAM_FORMAT_GRAYSCALE_ALPHA:I = 0x3

.field public static final IMWRITE_PAM_FORMAT_NULL:I = 0x0

.field public static final IMWRITE_PAM_FORMAT_RGB:I = 0x4

.field public static final IMWRITE_PAM_FORMAT_RGB_ALPHA:I = 0x5

.field public static final IMWRITE_PAM_TUPLETYPE:I = 0x80

.field public static final IMWRITE_PNG_BILEVEL:I = 0x12

.field public static final IMWRITE_PNG_COMPRESSION:I = 0x10

.field public static final IMWRITE_PNG_STRATEGY:I = 0x11

.field public static final IMWRITE_PNG_STRATEGY_DEFAULT:I = 0x0

.field public static final IMWRITE_PNG_STRATEGY_FILTERED:I = 0x1

.field public static final IMWRITE_PNG_STRATEGY_FIXED:I = 0x4

.field public static final IMWRITE_PNG_STRATEGY_HUFFMAN_ONLY:I = 0x2

.field public static final IMWRITE_PNG_STRATEGY_RLE:I = 0x3

.field public static final IMWRITE_PXM_BINARY:I = 0x20

.field public static final IMWRITE_TIFF_COMPRESSION:I = 0x103

.field public static final IMWRITE_TIFF_COMPRESSION_ADOBE_DEFLATE:I = 0x8

.field public static final IMWRITE_TIFF_COMPRESSION_CCITTFAX3:I = 0x3

.field public static final IMWRITE_TIFF_COMPRESSION_CCITTFAX4:I = 0x4

.field public static final IMWRITE_TIFF_COMPRESSION_CCITTRLE:I = 0x2

.field public static final IMWRITE_TIFF_COMPRESSION_CCITTRLEW:I = 0x8003

.field public static final IMWRITE_TIFF_COMPRESSION_CCITT_T4:I = 0x3

.field public static final IMWRITE_TIFF_COMPRESSION_CCITT_T6:I = 0x4

.field public static final IMWRITE_TIFF_COMPRESSION_DCS:I = 0x80b3

.field public static final IMWRITE_TIFF_COMPRESSION_DEFLATE:I = 0x80b2

.field public static final IMWRITE_TIFF_COMPRESSION_IT8BL:I = 0x8082

.field public static final IMWRITE_TIFF_COMPRESSION_IT8CTPAD:I = 0x807f

.field public static final IMWRITE_TIFF_COMPRESSION_IT8LW:I = 0x8080

.field public static final IMWRITE_TIFF_COMPRESSION_IT8MP:I = 0x8081

.field public static final IMWRITE_TIFF_COMPRESSION_JBIG:I = 0x8765

.field public static final IMWRITE_TIFF_COMPRESSION_JP2000:I = 0x8798

.field public static final IMWRITE_TIFF_COMPRESSION_JPEG:I = 0x7

.field public static final IMWRITE_TIFF_COMPRESSION_JXL:I = 0xc352

.field public static final IMWRITE_TIFF_COMPRESSION_LERC:I = 0x8847

.field public static final IMWRITE_TIFF_COMPRESSION_LZMA:I = 0x886d

.field public static final IMWRITE_TIFF_COMPRESSION_LZW:I = 0x5

.field public static final IMWRITE_TIFF_COMPRESSION_NEXT:I = 0x7ffe

.field public static final IMWRITE_TIFF_COMPRESSION_NONE:I = 0x1

.field public static final IMWRITE_TIFF_COMPRESSION_OJPEG:I = 0x6

.field public static final IMWRITE_TIFF_COMPRESSION_PACKBITS:I = 0x8005

.field public static final IMWRITE_TIFF_COMPRESSION_PIXARFILM:I = 0x808c

.field public static final IMWRITE_TIFF_COMPRESSION_PIXARLOG:I = 0x808d

.field public static final IMWRITE_TIFF_COMPRESSION_SGILOG:I = 0x8774

.field public static final IMWRITE_TIFF_COMPRESSION_SGILOG24:I = 0x8775

.field public static final IMWRITE_TIFF_COMPRESSION_T43:I = 0xa

.field public static final IMWRITE_TIFF_COMPRESSION_T85:I = 0x9

.field public static final IMWRITE_TIFF_COMPRESSION_THUNDERSCAN:I = 0x8029

.field public static final IMWRITE_TIFF_COMPRESSION_WEBP:I = 0xc351

.field public static final IMWRITE_TIFF_COMPRESSION_ZSTD:I = 0xc350

.field public static final IMWRITE_TIFF_PREDICTOR:I = 0x13d

.field public static final IMWRITE_TIFF_PREDICTOR_FLOATINGPOINT:I = 0x3

.field public static final IMWRITE_TIFF_PREDICTOR_HORIZONTAL:I = 0x2

.field public static final IMWRITE_TIFF_PREDICTOR_NONE:I = 0x1

.field public static final IMWRITE_TIFF_RESUNIT:I = 0x100

.field public static final IMWRITE_TIFF_ROWSPERSTRIP:I = 0x116

.field public static final IMWRITE_TIFF_XDPI:I = 0x101

.field public static final IMWRITE_TIFF_YDPI:I = 0x102

.field public static final IMWRITE_WEBP_QUALITY:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static haveImageReader(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/opencv/imgcodecs/Imgcodecs;->haveImageReader_0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static native haveImageReader_0(Ljava/lang/String;)Z
.end method

.method public static haveImageWriter(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/opencv/imgcodecs/Imgcodecs;->haveImageWriter_0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static native haveImageWriter_0(Ljava/lang/String;)Z
.end method

.method public static imcount(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lorg/opencv/imgcodecs/Imgcodecs;->imcount_1(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static imcount(Ljava/lang/String;I)J
    .locals 0

    invoke-static {p0, p1}, Lorg/opencv/imgcodecs/Imgcodecs;->imcount_0(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static native imcount_0(Ljava/lang/String;I)J
.end method

.method private static native imcount_1(Ljava/lang/String;)J
.end method

.method public static imdecode(Lorg/opencv/core/Mat;I)Lorg/opencv/core/Mat;
    .locals 3

    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2, p1}, Lorg/opencv/imgcodecs/Imgcodecs;->imdecode_0(JI)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method private static native imdecode_0(JI)J
.end method

.method public static imdecodemulti(Lorg/opencv/core/Mat;ILjava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "I",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2, p1, v3, v4}, Lorg/opencv/imgcodecs/Imgcodecs;->imdecodemulti_1(JIJ)Z

    move-result p0

    invoke-static {v0, p2}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    return p0
.end method

.method public static imdecodemulti(Lorg/opencv/core/Mat;ILjava/util/List;Lorg/opencv/core/Range;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "I",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Range;",
            ")Z"
        }
    .end annotation

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget v6, p3, Lorg/opencv/core/Range;->start:I

    iget v7, p3, Lorg/opencv/core/Range;->end:I

    move v3, p1

    invoke-static/range {v1 .. v7}, Lorg/opencv/imgcodecs/Imgcodecs;->imdecodemulti_0(JIJII)Z

    move-result p0

    invoke-static {v0, p2}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    return p0
.end method

.method private static native imdecodemulti_0(JIJII)Z
.end method

.method private static native imdecodemulti_1(JIJ)Z
.end method

.method public static imencode(Ljava/lang/String;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfByte;)Z
    .locals 2

    iget-wide v0, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide p1, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v0, v1, p1, p2}, Lorg/opencv/imgcodecs/Imgcodecs;->imencode_1(Ljava/lang/String;JJ)Z

    move-result p0

    return p0
.end method

.method public static imencode(Ljava/lang/String;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfInt;)Z
    .locals 7

    iget-wide v1, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lorg/opencv/imgcodecs/Imgcodecs;->imencode_0(Ljava/lang/String;JJJ)Z

    move-result p0

    return p0
.end method

.method private static native imencode_0(Ljava/lang/String;JJJ)Z
.end method

.method private static native imencode_1(Ljava/lang/String;JJ)Z
.end method

.method public static imencodemulti(Ljava/lang/String;Ljava/util/List;Lorg/opencv/core/MatOfByte;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/MatOfByte;",
            ")Z"
        }
    .end annotation

    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object p1

    iget-wide v0, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide p1, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v0, v1, p1, p2}, Lorg/opencv/imgcodecs/Imgcodecs;->imencodemulti_1(Ljava/lang/String;JJ)Z

    move-result p0

    return p0
.end method

.method public static imencodemulti(Ljava/lang/String;Ljava/util/List;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfInt;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/MatOfByte;",
            "Lorg/opencv/core/MatOfInt;",
            ")Z"
        }
    .end annotation

    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object p1

    iget-wide v1, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lorg/opencv/imgcodecs/Imgcodecs;->imencodemulti_0(Ljava/lang/String;JJJ)Z

    move-result p0

    return p0
.end method

.method private static native imencodemulti_0(Ljava/lang/String;JJJ)Z
.end method

.method private static native imencodemulti_1(Ljava/lang/String;JJ)Z
.end method

.method public static imread(Ljava/lang/String;)Lorg/opencv/core/Mat;
    .locals 3

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-static {p0}, Lorg/opencv/imgcodecs/Imgcodecs;->imread_1(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static imread(Ljava/lang/String;I)Lorg/opencv/core/Mat;
    .locals 1

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-static {p0, p1}, Lorg/opencv/imgcodecs/Imgcodecs;->imread_0(Ljava/lang/String;I)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static imread(Ljava/lang/String;Lorg/opencv/core/Mat;)V
    .locals 2

    iget-wide v0, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v0, v1}, Lorg/opencv/imgcodecs/Imgcodecs;->imread_3(Ljava/lang/String;J)V

    return-void
.end method

.method public static imread(Ljava/lang/String;Lorg/opencv/core/Mat;I)V
    .locals 2

    iget-wide v0, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v0, v1, p2}, Lorg/opencv/imgcodecs/Imgcodecs;->imread_2(Ljava/lang/String;JI)V

    return-void
.end method

.method private static native imread_0(Ljava/lang/String;I)J
.end method

.method private static native imread_1(Ljava/lang/String;)J
.end method

.method private static native imread_2(Ljava/lang/String;JI)V
.end method

.method private static native imread_3(Ljava/lang/String;J)V
.end method

.method public static imreadanimation(Ljava/lang/String;Lorg/opencv/imgcodecs/Animation;)Z
    .locals 2

    iget-wide v0, p1, Lorg/opencv/imgcodecs/Animation;->nativeObj:J

    invoke-static {p0, v0, v1}, Lorg/opencv/imgcodecs/Imgcodecs;->imreadanimation_2(Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static imreadanimation(Ljava/lang/String;Lorg/opencv/imgcodecs/Animation;I)Z
    .locals 2

    iget-wide v0, p1, Lorg/opencv/imgcodecs/Animation;->nativeObj:J

    invoke-static {p0, v0, v1, p2}, Lorg/opencv/imgcodecs/Imgcodecs;->imreadanimation_1(Ljava/lang/String;JI)Z

    move-result p0

    return p0
.end method

.method public static imreadanimation(Ljava/lang/String;Lorg/opencv/imgcodecs/Animation;II)Z
    .locals 2

    iget-wide v0, p1, Lorg/opencv/imgcodecs/Animation;->nativeObj:J

    invoke-static {p0, v0, v1, p2, p3}, Lorg/opencv/imgcodecs/Imgcodecs;->imreadanimation_0(Ljava/lang/String;JII)Z

    move-result p0

    return p0
.end method

.method private static native imreadanimation_0(Ljava/lang/String;JII)Z
.end method

.method private static native imreadanimation_1(Ljava/lang/String;JI)Z
.end method

.method private static native imreadanimation_2(Ljava/lang/String;J)Z
.end method

.method public static imreadmulti(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v1, v2}, Lorg/opencv/imgcodecs/Imgcodecs;->imreadmulti_1(Ljava/lang/String;J)Z

    move-result p0

    invoke-static {v0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    return p0
.end method

.method public static imreadmulti(Ljava/lang/String;Ljava/util/List;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;I)Z"
        }
    .end annotation

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v1, v2, p2}, Lorg/opencv/imgcodecs/Imgcodecs;->imreadmulti_0(Ljava/lang/String;JI)Z

    move-result p0

    invoke-static {v0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    return p0
.end method

.method public static imreadmulti(Ljava/lang/String;Ljava/util/List;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;II)Z"
        }
    .end annotation

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v1, v2, p2, p3}, Lorg/opencv/imgcodecs/Imgcodecs;->imreadmulti_3(Ljava/lang/String;JII)Z

    move-result p0

    invoke-static {v0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    return p0
.end method

.method public static imreadmulti(Ljava/lang/String;Ljava/util/List;III)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;III)Z"
        }
    .end annotation

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object v1, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lorg/opencv/imgcodecs/Imgcodecs;->imreadmulti_2(Ljava/lang/String;JIII)Z

    move-result p0

    invoke-static {v0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    return p0
.end method

.method private static native imreadmulti_0(Ljava/lang/String;JI)Z
.end method

.method private static native imreadmulti_1(Ljava/lang/String;J)Z
.end method

.method private static native imreadmulti_2(Ljava/lang/String;JIII)Z
.end method

.method private static native imreadmulti_3(Ljava/lang/String;JII)Z
.end method

.method public static imwrite(Ljava/lang/String;Lorg/opencv/core/Mat;)Z
    .locals 2

    iget-wide v0, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v0, v1}, Lorg/opencv/imgcodecs/Imgcodecs;->imwrite_1(Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static imwrite(Ljava/lang/String;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfInt;)Z
    .locals 2

    iget-wide v0, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide p1, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v0, v1, p1, p2}, Lorg/opencv/imgcodecs/Imgcodecs;->imwrite_0(Ljava/lang/String;JJ)Z

    move-result p0

    return p0
.end method

.method private static native imwrite_0(Ljava/lang/String;JJ)Z
.end method

.method private static native imwrite_1(Ljava/lang/String;J)Z
.end method

.method public static imwriteanimation(Ljava/lang/String;Lorg/opencv/imgcodecs/Animation;)Z
    .locals 2

    iget-wide v0, p1, Lorg/opencv/imgcodecs/Animation;->nativeObj:J

    invoke-static {p0, v0, v1}, Lorg/opencv/imgcodecs/Imgcodecs;->imwriteanimation_1(Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static imwriteanimation(Ljava/lang/String;Lorg/opencv/imgcodecs/Animation;Lorg/opencv/core/MatOfInt;)Z
    .locals 2

    iget-wide v0, p1, Lorg/opencv/imgcodecs/Animation;->nativeObj:J

    iget-wide p1, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v0, v1, p1, p2}, Lorg/opencv/imgcodecs/Imgcodecs;->imwriteanimation_0(Ljava/lang/String;JJ)Z

    move-result p0

    return p0
.end method

.method private static native imwriteanimation_0(Ljava/lang/String;JJ)Z
.end method

.method private static native imwriteanimation_1(Ljava/lang/String;J)Z
.end method

.method public static imwritemulti(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object p1

    iget-wide v0, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v0, v1}, Lorg/opencv/imgcodecs/Imgcodecs;->imwritemulti_1(Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static imwritemulti(Ljava/lang/String;Ljava/util/List;Lorg/opencv/core/MatOfInt;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/MatOfInt;",
            ")Z"
        }
    .end annotation

    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object p1

    iget-wide v0, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide p1, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v0, v1, p1, p2}, Lorg/opencv/imgcodecs/Imgcodecs;->imwritemulti_0(Ljava/lang/String;JJ)Z

    move-result p0

    return p0
.end method

.method private static native imwritemulti_0(Ljava/lang/String;JJ)Z
.end method

.method private static native imwritemulti_1(Ljava/lang/String;J)Z
.end method
