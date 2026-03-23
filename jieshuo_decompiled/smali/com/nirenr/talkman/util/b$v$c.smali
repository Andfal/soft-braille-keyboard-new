.class Lcom/nirenr/talkman/util/b$v$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/b$v;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaDialog;

.field final synthetic b:Lcom/nirenr/talkman/util/b$v;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/b$v;Lcom/androlua/LuaDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/b$v$c;->b:Lcom/nirenr/talkman/util/b$v;

    iput-object p2, p0, Lcom/nirenr/talkman/util/b$v$c;->a:Lcom/androlua/LuaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "\u6682\u505c"

    const-string v3, "\u64ad\u653e"

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "\u505c\u6b62"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/nirenr/talkman/util/b$v$c;->b:Lcom/nirenr/talkman/util/b$v;

    iget-object v0, v0, Lcom/nirenr/talkman/util/b$v;->a:Lcom/nirenr/talkman/util/Music;

    invoke-virtual {v0}, Lcom/nirenr/talkman/util/Music;->k()V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/nirenr/talkman/util/b$v$c;->b:Lcom/nirenr/talkman/util/b$v;

    iget-object v0, v0, Lcom/nirenr/talkman/util/b$v;->a:Lcom/nirenr/talkman/util/Music;

    invoke-virtual {v0}, Lcom/nirenr/talkman/util/Music;->v()V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/nirenr/talkman/util/b$v$c;->b:Lcom/nirenr/talkman/util/b$v;

    iget-object p1, p1, Lcom/nirenr/talkman/util/b$v;->a:Lcom/nirenr/talkman/util/Music;

    invoke-virtual {p1}, Lcom/nirenr/talkman/util/Music;->w()V

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$v$c;->a:Lcom/androlua/LuaDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa2686 -> :sswitch_2
        0xc9631 -> :sswitch_1
        0xcba1a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
