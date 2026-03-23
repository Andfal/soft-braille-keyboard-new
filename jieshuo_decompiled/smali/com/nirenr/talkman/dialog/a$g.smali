.class Lcom/nirenr/talkman/dialog/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/a;->s()V
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

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/nirenr/talkman/dialog/a$g;->b:Landroid/app/FloatWindow;

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

    if-lt p1, p4, :cond_2e

    const/high16 p1, 0x100000

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p4, 0x15

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    :pswitch_1
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p4, 0x16

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    :pswitch_2
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p4, 0x13

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    :pswitch_3
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p4, 0x14

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    :pswitch_4
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p4, 0x3e

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    :pswitch_5
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const-string p4, "/"

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->commitText(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    :pswitch_6
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p4, 0x42

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_2e

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->b:Landroid/app/FloatWindow;

    invoke-virtual {p1}, Landroid/app/FloatWindow;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->l(Lcom/nirenr/talkman/dialog/a;)V

    return-void

    :pswitch_8
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->b:Landroid/app/FloatWindow;

    invoke-virtual {p1}, Landroid/app/FloatWindow;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->j(Lcom/nirenr/talkman/dialog/a;)V

    return-void

    :pswitch_9
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x2d

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    :cond_6
    :pswitch_a
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x33

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    :cond_7
    :pswitch_b
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    invoke-virtual {p2, p4, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_8

    return-void

    :cond_8
    :pswitch_c
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x2e

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_9

    return-void

    :cond_9
    :pswitch_d
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x30

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_a

    return-void

    :cond_a
    :pswitch_e
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x35

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_b

    return-void

    :cond_b
    :pswitch_f
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x31

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_c

    return-void

    :cond_c
    :pswitch_10
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x25

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_d

    return-void

    :cond_d
    :pswitch_11
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x2b

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_e

    return-void

    :cond_e
    :pswitch_12
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x2c

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_f

    return-void

    :cond_f
    :pswitch_13
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x1d

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_10

    return-void

    :cond_10
    :pswitch_14
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x2f

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_11

    return-void

    :cond_11
    :pswitch_15
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x20

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_12

    return-void

    :cond_12
    :pswitch_16
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x22

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_13

    return-void

    :cond_13
    :pswitch_17
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x23

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_14

    return-void

    :cond_14
    :pswitch_18
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x24

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_15

    return-void

    :cond_15
    :pswitch_19
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x26

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_16

    return-void

    :cond_16
    :pswitch_1a
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x27

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_17

    return-void

    :cond_17
    :pswitch_1b
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x28

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_18

    return-void

    :cond_18
    :pswitch_1c
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x4a

    invoke-virtual {p2, p3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p2

    if-eqz p2, :cond_19

    return-void

    :cond_19
    :pswitch_1d
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x36

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_1a

    return-void

    :cond_1a
    :pswitch_1e
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x34

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_1b

    return-void

    :cond_1b
    :pswitch_1f
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x1f

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_1c

    return-void

    :cond_1c
    :pswitch_20
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x32

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_1d

    return-void

    :cond_1d
    :pswitch_21
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x1e

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_1e

    return-void

    :cond_1e
    :pswitch_22
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x2a

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p2

    if-eqz p2, :cond_1f

    return-void

    :cond_1f
    :pswitch_23
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/16 p3, 0x29

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(II)Z

    move-result p1

    if-eqz p1, :cond_20

    return-void

    :cond_20
    :pswitch_24
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p2, 0x9f

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_21

    return-void

    :cond_21
    :pswitch_25
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p2, 0x9e

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_22

    return-void

    :cond_22
    :pswitch_26
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p2, 0x43

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_23

    return-void

    :cond_23
    :pswitch_27
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->b:Landroid/app/FloatWindow;

    invoke-virtual {p1}, Landroid/app/FloatWindow;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->k(Lcom/nirenr/talkman/dialog/a;)V

    return-void

    :pswitch_28
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_24

    return-void

    :cond_24
    :pswitch_29
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_25

    return-void

    :cond_25
    :pswitch_2a
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_26

    return-void

    :cond_26
    :pswitch_2b
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_27

    return-void

    :cond_27
    :pswitch_2c
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_28

    return-void

    :cond_28
    :pswitch_2d
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_29

    return-void

    :cond_29
    :pswitch_2e
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_2a

    return-void

    :cond_2a
    :pswitch_2f
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_2b

    return-void

    :cond_2b
    :pswitch_30
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_2c

    return-void

    :cond_2c
    :pswitch_31
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_2d

    return-void

    :cond_2d
    :pswitch_32
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a$g;->a:[Ljava/lang/String;

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->commitText(Ljava/lang/String;)Z

    return-void

    :cond_2e
    :goto_0
    packed-switch p3, :pswitch_data_1

    :pswitch_33
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKey(Ljava/lang/String;)V

    return-void

    :pswitch_34
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const-string p2, "Return"

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKey(Ljava/lang/String;)V

    return-void

    :pswitch_35
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const-string p2, "space"

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKey(Ljava/lang/String;)V

    return-void

    :pswitch_36
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const-string p2, "Down"

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKey(Ljava/lang/String;)V

    return-void

    :pswitch_37
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const-string p2, "Up"

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKey(Ljava/lang/String;)V

    return-void

    :pswitch_38
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const-string p2, "Right"

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKey(Ljava/lang/String;)V

    return-void

    :pswitch_39
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const-string p2, "Left"

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKey(Ljava/lang/String;)V

    return-void

    :pswitch_3a
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->b:Landroid/app/FloatWindow;

    invoke-virtual {p1}, Landroid/app/FloatWindow;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->l(Lcom/nirenr/talkman/dialog/a;)V

    return-void

    :pswitch_3b
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->b:Landroid/app/FloatWindow;

    invoke-virtual {p1}, Landroid/app/FloatWindow;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->j(Lcom/nirenr/talkman/dialog/a;)V

    return-void

    :pswitch_3c
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->b:Landroid/app/FloatWindow;

    invoke-virtual {p1}, Landroid/app/FloatWindow;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->k(Lcom/nirenr/talkman/dialog/a;)V

    return-void

    :pswitch_3d
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$g;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const-string p2, "BackSpace"

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKey(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_9
        :pswitch_a
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
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
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
    .packed-switch 0x31
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_33
        :pswitch_34
    .end packed-switch
.end method
