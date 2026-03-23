.class Lh2/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/c;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lh2/c;


# direct methods
.method constructor <init>(Lh2/c;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lh2/c$b;->b:Lh2/c;

    iput-object p2, p0, Lh2/c$b;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lh2/c$b;->b:Lh2/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lh2/c;->i(Lh2/c;Ljava/lang/String;)V

    iget-object p1, p0, Lh2/c$b;->a:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lh2/c$b;->b:Lh2/c;

    invoke-static {p1}, Lh2/c;->m(Lh2/c;)V

    return-void
.end method
