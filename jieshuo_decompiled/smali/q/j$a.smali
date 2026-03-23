.class Lq/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq/j;->m(Lq/l0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lq/m;

.field final synthetic b:Lq/j;


# direct methods
.method constructor <init>(Lq/j;Lq/m;)V
    .locals 0

    iput-object p1, p0, Lq/j$a;->b:Lq/j;

    iput-object p2, p0, Lq/j$a;->a:Lq/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lv/a;)I
    .locals 1

    iget-object v0, p0, Lq/j$a;->a:Lq/m;

    invoke-virtual {v0, p1}, Lq/m;->d(Lv/a;)Lq/x;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Lq/x;->f()I

    move-result p1

    return p1
.end method
