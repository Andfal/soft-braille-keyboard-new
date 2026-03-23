.class public final enum Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OrtSession$SessionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OptLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

.field public static final enum ALL_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

.field public static final enum BASIC_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

.field public static final enum EXTENDED_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

.field public static final enum NO_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    const-string v1, "NO_OPT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->NO_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    new-instance v1, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    const-string v3, "BASIC_OPT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->BASIC_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    new-instance v3, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    const-string v5, "EXTENDED_OPT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->EXTENDED_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    new-instance v5, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    const/16 v7, 0x63

    const-string v8, "ALL_OPT"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9, v7}, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->ALL_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    const/4 v7, 0x4

    new-array v7, v7, [Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v9

    sput-object v7, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->$VALUES:[Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;
    .locals 1

    const-class v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;
    .locals 1

    sget-object v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->$VALUES:[Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    invoke-virtual {v0}, [Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    return-object v0
.end method


# virtual methods
.method public getID()I
    .locals 1

    iget v0, p0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->id:I

    return v0
.end method
