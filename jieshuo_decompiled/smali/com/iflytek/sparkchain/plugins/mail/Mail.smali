.class public final Lcom/iflytek/sparkchain/plugins/mail/Mail;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;,
        Lcom/iflytek/sparkchain/plugins/mail/Mail$Draft;,
        Lcom/iflytek/sparkchain/plugins/mail/Mail$IMAP;,
        Lcom/iflytek/sparkchain/plugins/mail/Mail$SMTP;,
        Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;,
        Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static auth(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)Z
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/plugins/mail/AuthService;

    invoke-direct {v0, p0}, Lcom/iflytek/sparkchain/plugins/mail/AuthService;-><init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)V

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/plugins/mail/AuthService;->auth()Z

    move-result p0

    return p0
.end method
