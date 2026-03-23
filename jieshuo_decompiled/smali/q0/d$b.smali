.class Lq0/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo0/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq0/d;->a()Ll0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lq0/d;


# direct methods
.method constructor <init>(Lq0/d;)V
    .locals 0

    iput-object p1, p0, Lq0/d$b;->a:Lq0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll1/h;)V
    .locals 0

    return-void
.end method

.method public b(Ll1/h;)V
    .locals 0

    return-void
.end method

.method public c(Ll1/h;)V
    .locals 1

    iget-object v0, p0, Lq0/d$b;->a:Lq0/d;

    invoke-static {v0, p1}, Lq0/d;->j(Lq0/d;Ll1/h;)Ll1/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lq0/a;->c(Ll1/h;)V

    return-void
.end method

.method public d(Ll1/h;)V
    .locals 0

    return-void
.end method

.method public e(Ll1/h;)V
    .locals 0

    return-void
.end method
