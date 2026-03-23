.class public abstract Lu/d;
.super Lu/f;
.source "SourceFile"


# instance fields
.field private final e:Lv/a;


# direct methods
.method public constructor <init>(Lu/r;Lu/u;Lu/n;Lu/p;Lv/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lu/f;-><init>(Lu/r;Lu/u;Lu/n;Lu/p;)V

    if-eqz p5, :cond_0

    iput-object p5, p0, Lu/d;->e:Lv/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cst == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/d;->e:Lv/a;

    invoke-interface {v0}, Lx/r;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Lv/a;
    .locals 1

    iget-object v0, p0, Lu/d;->e:Lv/a;

    return-object v0
.end method
