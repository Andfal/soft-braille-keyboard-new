.class Lcom/myopicmobile/textwarrior/android/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/myopicmobile/textwarrior/android/a;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/myopicmobile/textwarrior/android/a;


# direct methods
.method constructor <init>(Lcom/myopicmobile/textwarrior/android/a;)V
    .locals 0

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/a$a;->a:Lcom/myopicmobile/textwarrior/android/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object p2, p0, Lcom/myopicmobile/textwarrior/android/a$a;->a:Lcom/myopicmobile/textwarrior/android/a;

    invoke-static {p2}, Lcom/myopicmobile/textwarrior/android/a;->d(Lcom/myopicmobile/textwarrior/android/a;)Lcom/myopicmobile/textwarrior/android/c;

    move-result-object p2

    iget-object p3, p0, Lcom/myopicmobile/textwarrior/android/a$a;->a:Lcom/myopicmobile/textwarrior/android/a;

    invoke-static {p3}, Lcom/myopicmobile/textwarrior/android/a;->d(Lcom/myopicmobile/textwarrior/android/a;)Lcom/myopicmobile/textwarrior/android/c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/myopicmobile/textwarrior/android/c;->getCaretPosition()I

    move-result p3

    iget-object p4, p0, Lcom/myopicmobile/textwarrior/android/a$a;->a:Lcom/myopicmobile/textwarrior/android/a;

    invoke-static {p4}, Lcom/myopicmobile/textwarrior/android/a;->b(Lcom/myopicmobile/textwarrior/android/a;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    sub-int/2addr p3, p4

    iget-object p4, p0, Lcom/myopicmobile/textwarrior/android/a$a;->a:Lcom/myopicmobile/textwarrior/android/a;

    invoke-static {p4}, Lcom/myopicmobile/textwarrior/android/a;->b(Lcom/myopicmobile/textwarrior/android/a;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-virtual {p2, p3, p4, p1}, Lcom/myopicmobile/textwarrior/android/c;->replaceText(IILjava/lang/String;)V

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/a$a;->a:Lcom/myopicmobile/textwarrior/android/a;

    invoke-static {p1}, Lcom/myopicmobile/textwarrior/android/a;->a(Lcom/myopicmobile/textwarrior/android/a;)Lcom/myopicmobile/textwarrior/android/a$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/a$b;->b()V

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/a$a;->a:Lcom/myopicmobile/textwarrior/android/a;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/a;->j()V

    return-void
.end method
