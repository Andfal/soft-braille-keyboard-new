.class Lh2/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/j;->e(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Lh2/j$b;

.field final synthetic c:Lh2/j;


# direct methods
.method constructor <init>(Lh2/j;Landroid/widget/LinearLayout;Lh2/j$b;)V
    .locals 0

    iput-object p1, p0, Lh2/j$a;->c:Lh2/j;

    iput-object p2, p0, Lh2/j$a;->a:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lh2/j$a;->b:Lh2/j$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lh2/j$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lh2/j$a;->a:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lh2/j$a;->b:Lh2/j$b;

    const-string v0, "+"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lh2/j$a;->b:Lh2/j$b;

    iget-object v0, p0, Lh2/j$a;->c:Lh2/j;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07026c

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lh2/j$a;->a:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lh2/j$a;->b:Lh2/j$b;

    const-string v0, "X"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lh2/j$a;->b:Lh2/j$b;

    iget-object v0, p0, Lh2/j$a;->c:Lh2/j;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070296

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
