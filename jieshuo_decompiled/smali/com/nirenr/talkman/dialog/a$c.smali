.class Lcom/nirenr/talkman/dialog/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/a;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/FloatWindow;

.field final synthetic b:Lcom/nirenr/talkman/dialog/a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/a;Landroid/app/FloatWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/a$c;->b:Lcom/nirenr/talkman/dialog/a;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/a$c;->a:Landroid/app/FloatWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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

    const/16 p5, 0xb

    const/16 v0, 0x9

    if-lt p1, p4, :cond_a

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$c;->b:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p4, 0x8

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    :pswitch_2
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$c;->b:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    :pswitch_3
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$c;->b:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p4, 0xa

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    :pswitch_4
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$c;->b:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    :pswitch_5
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$c;->b:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p4, 0xc

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    :pswitch_6
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$c;->b:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p4, 0xd

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    :pswitch_7
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$c;->b:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p4, 0xe

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    :cond_6
    :pswitch_8
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$c;->b:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p4, 0xf

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    :pswitch_9
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$c;->b:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p4, 0x10

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    :cond_8
    :pswitch_a
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$c;->b:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/4 p4, 0x7

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    :pswitch_b
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$c;->b:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/16 p4, 0x43

    invoke-virtual {p1, p4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKeyEvent(I)Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    :cond_a
    :goto_0
    if-eq p3, v0, :cond_c

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$c;->b:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    if-eq p3, p5, :cond_b

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_b
    const-string p2, "BackSpace"

    :goto_1
    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKey(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$c;->a:Landroid/app/FloatWindow;

    invoke-virtual {p1}, Landroid/app/FloatWindow;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$c;->b:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->j(Lcom/nirenr/talkman/dialog/a;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
