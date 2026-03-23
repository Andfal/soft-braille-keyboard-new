.class public Lcom/iflytek/sparkchain/plugins/mail/Mail$SMTP;
.super Lcom/iflytek/sparkchain/plugins/mail/SMTPService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/plugins/mail/Mail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMTP"
.end annotation


# direct methods
.method public constructor <init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/plugins/mail/SMTPService;-><init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic send(Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/iflytek/sparkchain/plugins/mail/SMTPService;->send(Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;)Z

    move-result p1

    return p1
.end method
