.class Lcom/nirenr/talkman/settings/GestureFileShare$1;
.super Landroid/widget/EditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/GestureFileShare;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/GestureFileShare;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/GestureFileShare;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/GestureFileShare$1;->a:Lcom/nirenr/talkman/settings/GestureFileShare;

    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object p2, p0, Lcom/nirenr/talkman/settings/GestureFileShare$1;->a:Lcom/nirenr/talkman/settings/GestureFileShare;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/GestureFileShare;->e(Lcom/nirenr/talkman/settings/GestureFileShare;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/nirenr/talkman/settings/GestureFileShare$1;->a:Lcom/nirenr/talkman/settings/GestureFileShare;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/GestureFileShare;->c(Lcom/nirenr/talkman/settings/GestureFileShare;)Landroid/widget/ArrayListAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ArrayListAdapter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
