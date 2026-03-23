.class Lcom/androlua/LuaEditor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditor;->startFindMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private edit:Landroid/widget/EditText;

.field private finder:Ld2/l;

.field private idx:I

.field final synthetic this$0:Lcom/androlua/LuaEditor;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditor$2;->this$0:Lcom/androlua/LuaEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lcom/androlua/LuaEditor$2;I)V
    .locals 0

    iput p1, p0, Lcom/androlua/LuaEditor$2;->idx:I

    return-void
.end method

.method static bridge synthetic b(Lcom/androlua/LuaEditor$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/androlua/LuaEditor$2;->findNext()V

    return-void
.end method

.method private findNext()V
    .locals 9

    new-instance v0, Ld2/l;

    invoke-direct {v0}, Ld2/l;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaEditor$2;->finder:Ld2/l;

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->this$0:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, v8}, Lcom/myopicmobile/textwarrior/android/c;->selectText(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/androlua/LuaEditor$2;->finder:Ld2/l;

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->this$0:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/androlua/LuaEditor;->getText()Ld2/f;

    move-result-object v2

    iget v4, p0, Lcom/androlua/LuaEditor$2;->idx:I

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->this$0:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/androlua/LuaEditor;->getText()Ld2/f;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Ld2/l;->b(Ld2/f;Ljava/lang/String;IIZZ)I

    move-result v0

    iput v0, p0, Lcom/androlua/LuaEditor$2;->idx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->this$0:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, v8}, Lcom/myopicmobile/textwarrior/android/c;->selectText(Z)V

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->this$0:Lcom/androlua/LuaEditor;

    invoke-static {v0}, Lcom/androlua/LuaEditor;->t(Lcom/androlua/LuaEditor;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070403

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput v8, p0, Lcom/androlua/LuaEditor$2;->idx:I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/androlua/LuaEditor$2;->this$0:Lcom/androlua/LuaEditor;

    iget-object v2, p0, Lcom/androlua/LuaEditor$2;->edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/myopicmobile/textwarrior/android/c;->setSelection(II)V

    iget v0, p0, Lcom/androlua/LuaEditor$2;->idx:I

    iget-object v1, p0, Lcom/androlua/LuaEditor$2;->edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/androlua/LuaEditor$2;->idx:I

    iget-object v1, p0, Lcom/androlua/LuaEditor$2;->this$0:Lcom/androlua/LuaEditor;

    invoke-virtual {v1, v0}, Lcom/myopicmobile/textwarrior/android/c;->moveCaret(I)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/androlua/LuaEditor$2;->findNext()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    const-string v0, "\u641c\u7d22"

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/androlua/LuaEditor$2$1;

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->this$0:Lcom/androlua/LuaEditor;

    invoke-static {v0}, Lcom/androlua/LuaEditor;->t(Lcom/androlua/LuaEditor;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/androlua/LuaEditor$2$1;-><init>(Lcom/androlua/LuaEditor$2;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/androlua/LuaEditor$2;->edit:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, p0, Lcom/androlua/LuaEditor$2;->edit:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object p1, p0, Lcom/androlua/LuaEditor$2;->edit:Landroid/widget/EditText;

    new-instance v2, Lcom/androlua/LuaEditor$2$2;

    invoke-direct {v2, p0}, Lcom/androlua/LuaEditor$2$2;-><init>(Lcom/androlua/LuaEditor$2;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcom/androlua/LuaEditor$2;->edit:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/RadioGroup$LayoutParams;

    iget-object v3, p0, Lcom/androlua/LuaEditor$2;->this$0:Lcom/androlua/LuaEditor;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v1

    const/4 v1, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, ""

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0, v1, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v2, p0, Lcom/androlua/LuaEditor$2;->edit:Landroid/widget/EditText;

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/androlua/LuaEditor$2;->this$0:Lcom/androlua/LuaEditor;

    invoke-static {p1}, Lcom/androlua/LuaEditor;->t(Lcom/androlua/LuaEditor;)Landroid/content/Context;

    move-result-object p1

    const v2, 0x104000c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    invoke-interface {p2, v1, v2, v1, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/androlua/LuaEditor$2;->edit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
