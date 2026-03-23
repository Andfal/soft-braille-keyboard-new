.class Lcom/nirenr/talkman/util/b$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/b;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/util/Music;

.field final synthetic b:Lcom/androlua/LuaDialog;

.field final synthetic c:Lcom/nirenr/talkman/util/b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/b;Lcom/nirenr/talkman/util/Music;Lcom/androlua/LuaDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/b$v;->c:Lcom/nirenr/talkman/util/b;

    iput-object p2, p0, Lcom/nirenr/talkman/util/b$v;->a:Lcom/nirenr/talkman/util/Music;

    iput-object p3, p0, Lcom/nirenr/talkman/util/b$v;->b:Lcom/androlua/LuaDialog;

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

    if-eqz p3, :cond_5

    const/4 p1, 0x1

    if-eq p3, p1, :cond_4

    const/4 p1, 0x2

    if-eq p3, p1, :cond_3

    const/4 p1, 0x3

    if-eq p3, p1, :cond_2

    const/4 p1, 0x4

    if-eq p3, p1, :cond_1

    const/4 p1, 0x5

    if-eq p3, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/util/b$v;->b:Lcom/androlua/LuaDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$v;->c:Lcom/nirenr/talkman/util/b;

    invoke-static {p1}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/util/b$v;->a:Lcom/nirenr/talkman/util/Music;

    invoke-virtual {p2}, Lcom/nirenr/talkman/util/Music;->h()Ljava/util/ArrayList;

    move-result-object p2

    const-string p3, "\u64ad\u653e\u5217\u8868"

    invoke-virtual {p1, p3, p2}, Lcom/androlua/LuaService;->createDialog(Ljava/lang/String;Ljava/util/List;)Lcom/androlua/LuaDialog;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/util/b$v$a;

    invoke-direct {p2, p0}, Lcom/nirenr/talkman/util/b$v$a;-><init>(Lcom/nirenr/talkman/util/b$v;)V

    invoke-virtual {p1, p2}, Lcom/androlua/LuaDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance p2, Lcom/nirenr/talkman/util/b$v$b;

    invoke-direct {p2, p0, p1}, Lcom/nirenr/talkman/util/b$v$b;-><init>(Lcom/nirenr/talkman/util/b$v;Lcom/androlua/LuaDialog;)V

    const-string p3, "\u505c\u6b62"

    invoke-virtual {p1, p3, p2}, Lcom/androlua/LuaDialog;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string p2, "\u6682\u505c"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/androlua/LuaDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Lcom/androlua/LuaDialog;->show()V

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    new-instance p3, Lcom/nirenr/talkman/util/b$v$c;

    invoke-direct {p3, p0, p1}, Lcom/nirenr/talkman/util/b$v$c;-><init>(Lcom/nirenr/talkman/util/b$v;Lcom/androlua/LuaDialog;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/util/b$v;->a:Lcom/nirenr/talkman/util/Music;

    invoke-virtual {p1}, Lcom/nirenr/talkman/util/Music;->w()V

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$v;->b:Lcom/androlua/LuaDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/util/b$v;->a:Lcom/nirenr/talkman/util/Music;

    invoke-virtual {p1}, Lcom/nirenr/talkman/util/Music;->n()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$v;->c:Lcom/nirenr/talkman/util/b;

    const-string p2, "\u6ca1\u6709\u4e0a\u4e00\u66f2"

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/util/b$v;->a:Lcom/nirenr/talkman/util/Music;

    invoke-virtual {p1}, Lcom/nirenr/talkman/util/Music;->j()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$v;->c:Lcom/nirenr/talkman/util/b;

    const-string p2, "\u6ca1\u6709\u4e0b\u4e00\u66f2"

    :goto_0
    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/util/b;->R(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/nirenr/talkman/util/b$v;->a:Lcom/nirenr/talkman/util/Music;

    invoke-virtual {p1}, Lcom/nirenr/talkman/util/Music;->v()V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/nirenr/talkman/util/b$v;->a:Lcom/nirenr/talkman/util/Music;

    invoke-virtual {p1}, Lcom/nirenr/talkman/util/Music;->k()V

    :cond_6
    :goto_1
    return-void
.end method
