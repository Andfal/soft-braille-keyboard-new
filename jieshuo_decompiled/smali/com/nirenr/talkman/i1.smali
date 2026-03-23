.class public final synthetic Lcom/nirenr/talkman/i1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/telephony/CellInfoNr;)Landroid/telephony/CellSignalStrength;
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/CellInfoNr;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object p0

    return-object p0
.end method
