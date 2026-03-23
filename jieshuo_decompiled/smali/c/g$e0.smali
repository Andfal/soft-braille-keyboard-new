.class Lc/g$e0;
.super Lc/g$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e0"
.end annotation


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Lc/g$u;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Lc/g$u;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/g$v;-><init>(Ljava/lang/String;Z)V

    iput-object p3, p0, Lc/g$e0;->f:Ljava/lang/String;

    iput-object p4, p0, Lc/g$e0;->g:Lc/g$u;

    return-void
.end method


# virtual methods
.method public a(Lc/g;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p4}, Lc/g$v;->b(Lc/g;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lc/g$e0;->g:Lc/g$u;

    sget-object p3, Lc/g$u;->a:Lc/g$u;

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lc/g$e0;->f:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    sget-object p3, Lc/g$u;->b:Lc/g$u;

    const/4 p4, 0x1

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lc/g$e0;->f:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, p4

    return p1

    :cond_1
    const/4 p2, 0x0

    if-nez p1, :cond_2

    return p2

    :cond_2
    iget-object p3, p0, Lc/g$e0;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    iget-object p3, p0, Lc/g$e0;->g:Lc/g$u;

    sget-object v0, Lc/g$u;->d:Lc/g$u;

    if-ne p3, v0, :cond_4

    if-gtz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p4, 0x0

    :goto_0
    return p4

    :cond_4
    sget-object v0, Lc/g$u;->c:Lc/g$u;

    if-ne p3, v0, :cond_6

    if-gez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 p4, 0x0

    :goto_1
    return p4

    :cond_6
    sget-object v0, Lc/g$u;->f:Lc/g$u;

    if-ne p3, v0, :cond_8

    if-ltz p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 p4, 0x0

    :goto_2
    return p4

    :cond_8
    sget-object v0, Lc/g$u;->e:Lc/g$u;

    if-ne p3, v0, :cond_a

    if-lez p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 p4, 0x0

    :goto_3
    return p4

    :cond_a
    return p2
.end method
