.class Lcom/nirenr/talkman/TalkManAccessibilityService$a8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a8"
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private c:Z

.field final synthetic d:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->c:Z

    iput p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->a:I

    iput-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->C0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->b3(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 8

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->D0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->b3(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->c:Z

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->k(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f0708ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->R(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lk2/j;

    move-result-object v1

    iget v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->a:I

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, v2, p1, v3}, Lk2/j;->e(IILandroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->a:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070748

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :pswitch_1
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070746

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :pswitch_2
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070872

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :pswitch_3
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f07086a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :pswitch_4
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070800

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :pswitch_5
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070804

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :pswitch_6
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070793

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :pswitch_7
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f07079f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :pswitch_8
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f07074a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :pswitch_9
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070868

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :pswitch_a
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070802

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :pswitch_b
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070798

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :pswitch_c
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f0707fe

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :pswitch_d
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070791

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :pswitch_e
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070744

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :pswitch_f
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070866

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->a:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const v7, 0x7f070134

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_4

    :pswitch_10
    if-eq p1, v0, :cond_5

    if-eq p1, v6, :cond_4

    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07021f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070220

    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return v0

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07021d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f07021e

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07021b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f07021c

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070222

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070223

    goto :goto_1

    :pswitch_11
    if-eq p1, v0, :cond_9

    if-eq p1, v6, :cond_8

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070214

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070215

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070212

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070213

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070210

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070211

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070217

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070218

    goto/16 :goto_1

    :pswitch_12
    if-eq p1, v0, :cond_d

    if-eq p1, v6, :cond_c

    if-eq p1, v5, :cond_b

    if-eq p1, v4, :cond_a

    goto/16 :goto_4

    :cond_a
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0706e4

    :goto_3
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_b
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0706e3

    goto :goto_3

    :cond_c
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0706e2

    goto :goto_3

    :cond_d
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0706e6

    goto :goto_3

    :pswitch_13
    if-eq p1, v0, :cond_11

    if-eq p1, v6, :cond_10

    if-eq p1, v5, :cond_f

    if-eq p1, v4, :cond_e

    goto/16 :goto_4

    :cond_e
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0706dd

    goto :goto_3

    :cond_f
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0706dc

    goto :goto_3

    :cond_10
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0706db

    goto :goto_3

    :cond_11
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0706df

    goto :goto_3

    :pswitch_14
    if-eq p1, v0, :cond_15

    if-eq p1, v6, :cond_14

    if-eq p1, v5, :cond_13

    if-eq p1, v4, :cond_12

    goto/16 :goto_4

    :cond_12
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070579

    goto :goto_3

    :cond_13
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070578

    goto :goto_3

    :cond_14
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070577

    goto :goto_3

    :cond_15
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07057b

    goto :goto_3

    :pswitch_15
    if-eq p1, v0, :cond_19

    if-eq p1, v6, :cond_18

    if-eq p1, v5, :cond_17

    if-eq p1, v4, :cond_16

    goto/16 :goto_4

    :cond_16
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070590

    goto :goto_3

    :cond_17
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07058f

    goto :goto_3

    :cond_18
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07058e

    goto :goto_3

    :cond_19
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070592

    goto/16 :goto_3

    :pswitch_16
    if-eq p1, v0, :cond_1d

    if-eq p1, v6, :cond_1c

    if-eq p1, v5, :cond_1b

    if-eq p1, v4, :cond_1a

    goto/16 :goto_4

    :cond_1a
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070329

    goto/16 :goto_3

    :cond_1b
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070328

    goto/16 :goto_3

    :cond_1c
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070327

    goto/16 :goto_3

    :cond_1d
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07032b

    goto/16 :goto_3

    :pswitch_17
    if-eq p1, v0, :cond_21

    if-eq p1, v6, :cond_20

    if-eq p1, v5, :cond_1f

    if-eq p1, v4, :cond_1e

    goto/16 :goto_4

    :cond_1e
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070341

    goto/16 :goto_3

    :cond_1f
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070340

    goto/16 :goto_3

    :cond_20
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07033f

    goto/16 :goto_3

    :cond_21
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070343

    goto/16 :goto_3

    :pswitch_18
    if-eq p1, v0, :cond_25

    if-eq p1, v6, :cond_24

    if-eq p1, v5, :cond_23

    if-eq p1, v4, :cond_22

    goto/16 :goto_4

    :cond_22
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070227

    goto/16 :goto_3

    :cond_23
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070226

    goto/16 :goto_3

    :cond_24
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070225

    goto/16 :goto_3

    :cond_25
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070229

    goto/16 :goto_3

    :pswitch_19
    if-eq p1, v0, :cond_29

    if-eq p1, v6, :cond_28

    if-eq p1, v5, :cond_27

    if-eq p1, v4, :cond_26

    goto/16 :goto_4

    :cond_26
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0706d3

    goto/16 :goto_3

    :cond_27
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0706d2

    goto/16 :goto_3

    :cond_28
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0706d1

    goto/16 :goto_3

    :cond_29
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0706d5

    goto/16 :goto_3

    :pswitch_1a
    if-eq p1, v0, :cond_2d

    if-eq p1, v6, :cond_2c

    if-eq p1, v5, :cond_2b

    if-eq p1, v4, :cond_2a

    goto/16 :goto_4

    :cond_2a
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070585

    goto/16 :goto_3

    :cond_2b
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070584

    goto/16 :goto_3

    :cond_2c
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070583

    goto/16 :goto_3

    :cond_2d
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070587

    goto/16 :goto_3

    :pswitch_1b
    if-eq p1, v0, :cond_31

    if-eq p1, v6, :cond_30

    if-eq p1, v5, :cond_2f

    if-eq p1, v4, :cond_2e

    goto/16 :goto_4

    :cond_2e
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07033a

    goto/16 :goto_3

    :cond_2f
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070339

    goto/16 :goto_3

    :cond_30
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070338

    goto/16 :goto_3

    :cond_31
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07033c

    goto/16 :goto_3

    :pswitch_1c
    if-eq p1, v0, :cond_35

    if-eq p1, v6, :cond_34

    if-eq p1, v5, :cond_33

    if-eq p1, v4, :cond_32

    goto/16 :goto_4

    :cond_32
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070574

    goto/16 :goto_3

    :cond_33
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070573

    goto/16 :goto_3

    :cond_34
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070572

    goto/16 :goto_3

    :cond_35
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070576

    goto/16 :goto_3

    :pswitch_1d
    if-eq p1, v0, :cond_39

    if-eq p1, v6, :cond_38

    if-eq p1, v5, :cond_37

    if-eq p1, v4, :cond_36

    goto/16 :goto_4

    :cond_36
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070324

    goto/16 :goto_3

    :cond_37
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070323

    goto/16 :goto_3

    :cond_38
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070322

    goto/16 :goto_3

    :cond_39
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070326

    goto/16 :goto_3

    :pswitch_1e
    if-eq p1, v0, :cond_3d

    if-eq p1, v6, :cond_3c

    if-eq p1, v5, :cond_3b

    if-eq p1, v4, :cond_3a

    goto :goto_4

    :cond_3a
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07020d

    goto/16 :goto_3

    :cond_3b
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07020c

    goto/16 :goto_3

    :cond_3c
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07020b

    goto/16 :goto_3

    :cond_3d
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07020f

    goto/16 :goto_3

    :pswitch_1f
    if-eq p1, v0, :cond_41

    if-eq p1, v6, :cond_40

    if-eq p1, v5, :cond_3f

    if-eq p1, v4, :cond_3e

    goto :goto_4

    :cond_3e
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0706ce

    goto/16 :goto_3

    :cond_3f
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0706cd

    goto/16 :goto_3

    :cond_40
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0706cc

    goto/16 :goto_3

    :cond_41
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0706d0

    goto/16 :goto_3

    :goto_4
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->c:Z

    return v0
.end method

.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->A0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->b3(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->c:Z

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->a:I

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a8;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->Q2(Lcom/nirenr/talkman/TalkManAccessibilityService;ILandroid/view/accessibility/AccessibilityNodeInfo;)Z

    return-void
.end method
