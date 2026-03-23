.class public Lw3/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/o$a;
    }
.end annotation


# static fields
.field private static d:Lw3/o;


# instance fields
.field private volatile a:Z

.field private final b:Ljava/lang/Object;

.field private volatile c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw3/o;

    invoke-direct {v0}, Lw3/o;-><init>()V

    sput-object v0, Lw3/o;->d:Lw3/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lw3/o;->b:Ljava/lang/Object;

    return-void
.end method

.method public static e()Lw3/o;
    .locals 1

    sget-object v0, Lw3/o;->d:Lw3/o;

    return-object v0
.end method

.method private static g()Z
    .locals 6

    const-string v0, "org.w3c.dom.Node"

    invoke-static {v0}, Lw3/v0;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v2, "getUserData"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    return v1
.end method


# virtual methods
.method protected a(Lw3/f;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p2, p3, p4, p5}, Lw3/f;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lw3/k;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public b()Lw3/m;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lw3/o;->c(Lw3/m;)Lw3/m;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lw3/m;)Lw3/m;
    .locals 0

    invoke-static {p1, p0}, Lw3/m;->l(Lw3/m;Lw3/o;)Lw3/m;

    move-result-object p1

    return-object p1
.end method

.method protected d()Lc4/a$a;
    .locals 1

    invoke-static {}, Lw3/o;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "org.mozilla.javascript.xmlimpl.XMLLibImpl"

    invoke-static {v0}, Lc4/a$a;->a(Ljava/lang/String;)Lc4/a$a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected f(Lw3/m;I)Z
    .locals 3

    const/16 v0, 0x78

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    return v2

    :pswitch_1
    return v1

    :pswitch_2
    return v2

    :pswitch_3
    invoke-virtual {p1}, Lw3/m;->v()I

    move-result p1

    const/16 p2, 0xc8

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_4
    invoke-virtual {p1}, Lw3/m;->v()I

    move-result p1

    const/16 p2, 0xaa

    if-gt p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    :pswitch_5
    return v1

    :pswitch_6
    return v2

    :pswitch_7
    invoke-virtual {p1}, Lw3/m;->v()I

    move-result p1

    if-eqz p1, :cond_3

    const/16 p2, 0xa0

    if-lt p1, p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_2
    :pswitch_8
    return v1

    :pswitch_9
    invoke-virtual {p1}, Lw3/m;->v()I

    move-result p1

    if-ne p1, v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    :pswitch_a
    return v1

    :pswitch_b
    return v2

    :pswitch_c
    invoke-virtual {p1}, Lw3/m;->v()I

    move-result p1

    const/16 p2, 0x64

    if-eq p1, p2, :cond_6

    const/16 p2, 0x6e

    if-eq p1, p2, :cond_6

    if-ne p1, v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lw3/o;->a:Z

    return v0
.end method

.method protected i()Lw3/m;
    .locals 1

    new-instance v0, Lw3/m;

    invoke-direct {v0, p0}, Lw3/m;-><init>(Lw3/o;)V

    return-object v0
.end method

.method protected j(Lw3/m;I)V
    .locals 0

    return-void
.end method

.method protected k(Lw3/m;)V
    .locals 3

    iget-object v0, p0, Lw3/o;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lw3/v0;->d(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw3/o$a;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v2, p1}, Lw3/o$a;->a(Lw3/m;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected l(Lw3/m;)V
    .locals 3

    iget-object v0, p0, Lw3/o;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lw3/v0;->d(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw3/o$a;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v2, p1}, Lw3/o$a;->b(Lw3/m;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
