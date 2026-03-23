.class Lcom/nirenr/talkman/dialog/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/a;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Landroid/app/FloatWindow;

.field final synthetic c:Lcom/nirenr/talkman/dialog/a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/a;[Ljava/lang/String;Landroid/app/FloatWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/a$i;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/nirenr/talkman/dialog/a$i;->b:Landroid/app/FloatWindow;

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

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x21

    if-lt p1, p4, :cond_11

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p4, 0x15

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    :pswitch_1
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p4, 0x16

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    :pswitch_2
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p4, 0x13

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    :pswitch_3
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p4, 0x14

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    :pswitch_4
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p4, 0x3e

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    :pswitch_5
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const-string p4, "/"

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->commitText(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    :pswitch_6
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p4, 0x42

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_11

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->b:Landroid/app/FloatWindow;

    invoke-virtual {p1}, Landroid/app/FloatWindow;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->i(Lcom/nirenr/talkman/dialog/a;)V

    return-void

    :pswitch_8
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->b:Landroid/app/FloatWindow;

    invoke-virtual {p1}, Landroid/app/FloatWindow;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->j(Lcom/nirenr/talkman/dialog/a;)V

    return-void

    :pswitch_9
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p2, 0x43

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    :cond_6
    :pswitch_a
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->b:Landroid/app/FloatWindow;

    invoke-virtual {p1}, Landroid/app/FloatWindow;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->k(Lcom/nirenr/talkman/dialog/a;)V

    return-void

    :pswitch_b
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    :pswitch_c
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    :cond_8
    :pswitch_d
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    :pswitch_e
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    :cond_a
    :pswitch_f
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    :cond_b
    :pswitch_10
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_c

    return-void

    :cond_c
    :pswitch_11
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    :cond_d
    :pswitch_12
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_e

    return-void

    :cond_e
    :pswitch_13
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_f

    return-void

    :cond_f
    :pswitch_14
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_10

    return-void

    :cond_10
    :pswitch_15
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$i;->a:[Ljava/lang/String;

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->commitText(Ljava/lang/String;)Z

    return-void

    :cond_11
    :goto_0
    packed-switch p3, :pswitch_data_1

    :pswitch_16
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKey(Ljava/lang/String;)V

    return-void

    :pswitch_17
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const-string p2, "Return"

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKey(Ljava/lang/String;)V

    return-void

    :pswitch_18
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const-string p2, "space"

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKey(Ljava/lang/String;)V

    return-void

    :pswitch_19
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const-string p2, "Down"

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKey(Ljava/lang/String;)V

    return-void

    :pswitch_1a
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const-string p2, "Up"

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKey(Ljava/lang/String;)V

    return-void

    :pswitch_1b
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const-string p2, "Right"

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKey(Ljava/lang/String;)V

    return-void

    :pswitch_1c
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const-string p2, "Left"

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKey(Ljava/lang/String;)V

    return-void

    :pswitch_1d
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->b:Landroid/app/FloatWindow;

    invoke-virtual {p1}, Landroid/app/FloatWindow;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->l(Lcom/nirenr/talkman/dialog/a;)V

    return-void

    :pswitch_1e
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->b:Landroid/app/FloatWindow;

    invoke-virtual {p1}, Landroid/app/FloatWindow;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->i(Lcom/nirenr/talkman/dialog/a;)V

    return-void

    :pswitch_1f
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->b:Landroid/app/FloatWindow;

    invoke-virtual {p1}, Landroid/app/FloatWindow;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->k(Lcom/nirenr/talkman/dialog/a;)V

    return-void

    :pswitch_20
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$i;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const-string p2, "BackSpace"

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKey(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method
