.class public final synthetic Lcom/nirenr/talkman/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/telephony/CellIdentity;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getOperatorAlphaShort()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
