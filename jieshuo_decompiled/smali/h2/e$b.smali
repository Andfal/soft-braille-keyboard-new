.class Lh2/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/e;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/e;


# direct methods
.method constructor <init>(Lh2/e;)V
    .locals 0

    iput-object p1, p0, Lh2/e$b;->a:Lh2/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object p1, p0, Lh2/e$b;->a:Lh2/e;

    invoke-static {p1}, Lh2/e;->a(Lh2/e;)Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    iget-object p4, p0, Lh2/e$b;->a:Lh2/e;

    invoke-static {p4}, Lh2/e;->c(Lh2/e;)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lh2/e$b;->a:Lh2/e;

    invoke-static {p5}, Lh2/e;->b(Lh2/e;)[Ljava/lang/String;

    move-result-object p5

    aget-object p3, p5, p3

    invoke-direct {p2, p4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/nirenr/talkman/p;->p(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
