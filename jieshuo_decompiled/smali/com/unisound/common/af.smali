.class public Lcom/unisound/common/af;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "3.0.10.30"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "3.0.10.30"

    return-object v0
.end method

.method public static a([Ljava/lang/String;)V
    .locals 1

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "3.0.10.30"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method
