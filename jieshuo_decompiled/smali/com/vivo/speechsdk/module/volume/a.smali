.class public Lcom/vivo/speechsdk/module/volume/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/volume/IVolumeCalculater;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculate([BI)I
    .locals 0

    invoke-static {}, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->b()Lcom/vivo/speechsdk/module/volume/VolumeCalculater;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->a([B)I

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 1

    invoke-static {}, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->b()Lcom/vivo/speechsdk/module/volume/VolumeCalculater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->a()V

    return-void
.end method

.method public init()I
    .locals 1

    invoke-static {}, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->b()Lcom/vivo/speechsdk/module/volume/VolumeCalculater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x7535

    return v0
.end method
