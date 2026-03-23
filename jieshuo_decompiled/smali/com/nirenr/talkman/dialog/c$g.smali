.class Lcom/nirenr/talkman/dialog/c$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/c;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/dialog/c;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    iput p2, p0, Lcom/nirenr/talkman/dialog/c$g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    if-eqz p2, :cond_9

    const/4 p1, 0x1

    if-eq p2, p1, :cond_8

    const/4 p1, 0x2

    if-eq p2, p1, :cond_7

    const/4 p1, 0x3

    const-string v0, ".txt"

    const v1, 0x7f070304

    const-string v2, ""

    const/16 v3, 0x20

    const/4 v4, 0x0

    const-string v5, "\\.[ \r\n]|[^a-zA-Z0-9][\\. ]+|[,!?;\u3002\uff1f\uff01\uff0c\r\n\u201c\u201d\uff1a\uff1b\\?!]+|[ \\.,!?;\u3002\uff1f\uff01\uff0c\r\n\u201c\u201d\uff1a\uff1b\\?!]+"

    if-eq p2, p1, :cond_5

    const/4 p1, 0x4

    if-eq p2, p1, :cond_2

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/c;->a(Lcom/nirenr/talkman/dialog/c;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/c;->b(Lcom/nirenr/talkman/dialog/c;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lcom/nirenr/talkman/dialog/c$g;->a:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v5}, Lk2/g0;->d(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v4

    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_1

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_1
    new-instance v2, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v3}, Lcom/nirenr/talkman/dialog/c;->g(Lcom/nirenr/talkman/dialog/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v4}, Lcom/nirenr/talkman/dialog/c;->g(Lcom/nirenr/talkman/dialog/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/nirenr/talkman/dialog/c$g$e;

    invoke-direct {v0, p0, p1}, Lcom/nirenr/talkman/dialog/c$g$e;-><init>(Lcom/nirenr/talkman/dialog/c$g;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1, p2, v0}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androlua/LuaApplication;->isVip()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/c;->g(Lcom/nirenr/talkman/dialog/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const v0, 0x7f07037f

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/nirenr/talkman/dialog/c;->m(Lcom/nirenr/talkman/dialog/c;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/c;->b(Lcom/nirenr/talkman/dialog/c;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lcom/nirenr/talkman/dialog/c$g;->a:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v5}, Lk2/g0;->d(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v4

    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_4

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_4
    new-instance v2, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v3}, Lcom/nirenr/talkman/dialog/c;->g(Lcom/nirenr/talkman/dialog/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v4}, Lcom/nirenr/talkman/dialog/c;->g(Lcom/nirenr/talkman/dialog/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/nirenr/talkman/dialog/c$g$d;

    invoke-direct {v0, p0, p1}, Lcom/nirenr/talkman/dialog/c$g$d;-><init>(Lcom/nirenr/talkman/dialog/c$g;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1, p2, v0}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/c;->b(Lcom/nirenr/talkman/dialog/c;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lcom/nirenr/talkman/dialog/c$g;->a:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v5}, Lk2/g0;->d(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v4

    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_6

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_6
    new-instance v2, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v3}, Lcom/nirenr/talkman/dialog/c;->g(Lcom/nirenr/talkman/dialog/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v4}, Lcom/nirenr/talkman/dialog/c;->g(Lcom/nirenr/talkman/dialog/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/nirenr/talkman/dialog/c$g$c;

    invoke-direct {v0, p0, p1}, Lcom/nirenr/talkman/dialog/c$g$c;-><init>(Lcom/nirenr/talkman/dialog/c$g;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1, p2, v0}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    :goto_0
    invoke-virtual {v2}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    goto/16 :goto_1

    :cond_7
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/c;->g(Lcom/nirenr/talkman/dialog/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/c;->g(Lcom/nirenr/talkman/dialog/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const v1, 0x7f0701ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/c;->b(Lcom/nirenr/talkman/dialog/c;)Landroid/widget/ArrayListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/nirenr/talkman/dialog/c$g;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f070095

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/dialog/c$g$b;

    invoke-direct {p2, p0}, Lcom/nirenr/talkman/dialog/c$g$b;-><init>(Lcom/nirenr/talkman/dialog/c$g;)V

    const v0, 0x104000a

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_1

    :cond_8
    new-instance p1, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/c;->g(Lcom/nirenr/talkman/dialog/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/c;->g(Lcom/nirenr/talkman/dialog/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const v1, 0x7f070248

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/c;->b(Lcom/nirenr/talkman/dialog/c;)Landroid/widget/ArrayListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/nirenr/talkman/dialog/c$g;->a:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/nirenr/talkman/dialog/c$g$a;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/dialog/c$g$a;-><init>(Lcom/nirenr/talkman/dialog/c$g;)V

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/c;->g(Lcom/nirenr/talkman/dialog/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/c;->b(Lcom/nirenr/talkman/dialog/c;)Landroid/widget/ArrayListAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ArrayListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object p2

    iget v0, p0, Lcom/nirenr/talkman/dialog/c$g;->a:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/c;->g(Lcom/nirenr/talkman/dialog/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const p2, 0x7f070374

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    :goto_1
    return-void
.end method
