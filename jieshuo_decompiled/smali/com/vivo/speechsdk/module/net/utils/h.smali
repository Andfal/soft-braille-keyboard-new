.class public final synthetic Lcom/vivo/speechsdk/module/net/utils/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/telephony/SignalStrength;)I
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p0

    return p0
.end method
