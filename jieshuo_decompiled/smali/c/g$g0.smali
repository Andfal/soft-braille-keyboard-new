.class Lc/g$g0;
.super Lc/g$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g0"
.end annotation


# instance fields
.field private final f:Ljava/lang/Object;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Object;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/g$v;-><init>(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/g$g0;->g:Z

    if-eqz p3, :cond_0

    iput-object p3, p0, Lc/g$g0;->f:Ljava/lang/Object;

    iput-boolean p4, p0, Lc/g$g0;->g:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lc/g;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p4}, Lc/g$v;->b(Lc/g;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lc/g$g0;->f:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-boolean p2, p0, Lc/g$g0;->g:Z

    if-nez p2, :cond_0

    xor-int/lit8 p1, p1, 0x1

    :cond_0
    return p1
.end method
