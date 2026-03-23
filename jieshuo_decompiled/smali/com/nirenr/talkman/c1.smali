.class public final synthetic Lcom/nirenr/talkman/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/telephony/CellInfo;)Landroid/telephony/CellIdentity;
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p0

    return-object p0
.end method
