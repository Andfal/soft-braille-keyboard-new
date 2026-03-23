.class public interface abstract Lcom/iflytek/sparkchain/plugins/mail/Mail$AuthListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/plugins/mail/Mail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AuthListener"
.end annotation


# virtual methods
.method public abstract onAuth(ILjava/lang/String;)V
.end method

.method public abstract onFailure(ILjava/lang/String;)V
.end method

.method public abstract onSuccess(ILjava/lang/String;)V
.end method
