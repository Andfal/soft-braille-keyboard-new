.class Ls1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a;->e(Landroid/content/Intent;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ls1/a$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ls1/a;


# direct methods
.method constructor <init>(Ls1/a;)V
    .locals 0

    iput-object p1, p0, Ls1/a$a;->a:Ls1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/a$c;Ls1/a$c;)I
    .locals 2

    iget v0, p2, Ls1/a$c;->b:I

    iget v1, p1, Ls1/a$c;->b:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_2

    iget-boolean p1, p1, Ls1/a$c;->d:Z

    if-eqz p1, :cond_0

    iget-boolean v1, p2, Ls1/a$c;->d:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    iget-boolean p1, p2, Ls1/a$c;->d:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ls1/a$c;

    check-cast p2, Ls1/a$c;

    invoke-virtual {p0, p1, p2}, Ls1/a$a;->a(Ls1/a$c;Ls1/a$c;)I

    move-result p1

    return p1
.end method
