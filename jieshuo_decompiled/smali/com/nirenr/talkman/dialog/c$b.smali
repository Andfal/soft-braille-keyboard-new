.class Lcom/nirenr/talkman/dialog/c$b;
.super Landroid/widget/EditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/c;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/c;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/c$b;->a:Lcom/nirenr/talkman/dialog/c;

    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/c$b;->a:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p2, p1}, Lcom/nirenr/talkman/dialog/c;->j(Lcom/nirenr/talkman/dialog/c;Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/c$b;->a:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/c;->f(Lcom/nirenr/talkman/dialog/c;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/c$b;->a:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/c;->b(Lcom/nirenr/talkman/dialog/c;)Landroid/widget/ArrayListAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ArrayListAdapter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
