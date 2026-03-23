.class Lcom/baidu/speech/utils/cuid/util/DeviceId$TargetApiSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/utils/cuid/util/DeviceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TargetApiSupport"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doChmodSafely(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->access$100(Ljava/lang/Throwable;)V

    return v0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/baidu/speech/utils/cuid/util/DeviceId;->access$100(Ljava/lang/Throwable;)V

    return v0
.end method
