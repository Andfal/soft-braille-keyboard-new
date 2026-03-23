.class Lcom/vivo/speechsdk/module/opus/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/opus/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/speechsdk/module/opus/c$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/opus/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)[B
    .locals 0

    invoke-static {p1}, Lcom/vivo/speechsdk/module/opus/Opus;->oggHead(I)[B

    move-result-object p1

    return-object p1
.end method

.method public a(J[BII)[B
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/vivo/speechsdk/module/opus/Opus;->decode(J[BII)[B

    move-result-object p1

    return-object p1
.end method

.method public b(J[BII)[B
    .locals 6

    const/4 v5, 0x2

    move-wide v0, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/vivo/speechsdk/module/opus/Opus;->ogg(J[BIII)[B

    move-result-object p1

    return-object p1
.end method
