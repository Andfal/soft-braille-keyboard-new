.class public Ll0/h;
.super Lk0/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lk0/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "speak"

    invoke-virtual {p0, v0}, Lk0/b;->e(Ljava/lang/String;)V

    const-string v0, "synthesize"

    invoke-virtual {p0, v0}, Lk0/b;->e(Ljava/lang/String;)V

    const-string v0, "setTtsListener"

    invoke-virtual {p0, v0}, Lk0/b;->e(Ljava/lang/String;)V

    return-void
.end method
