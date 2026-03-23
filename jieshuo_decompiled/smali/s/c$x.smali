.class final enum Ls/c$x;
.super Ls/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ls/c;-><init>(Ljava/lang/String;ILs/p0;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILs/z;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ls/c$x;-><init>(Ljava/lang/String;I)V

    return-void
.end method
