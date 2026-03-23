.class public Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/plugins/mail/Mail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public IMAPHost:Ljava/lang/String;

.field public IMAPPort:Ljava/lang/Integer;

.field public IMAPSSLEnable:Z

.field public SMTPHost:Ljava/lang/String;

.field public SMTPPort:Ljava/lang/Integer;

.field public SMTPSSLEnable:Z

.field public account:Ljava/lang/String;

.field public authListener:Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;

.field public nickname:Ljava/lang/String;

.field public password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
