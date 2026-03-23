.class Lcom/nirenr/talkman/dialog/f$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/f$a;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/f$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/f$a$b;->a:Lcom/nirenr/talkman/dialog/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f$a$b;->a:Lcom/nirenr/talkman/dialog/f$a;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/f$a;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/f;->e(Lcom/nirenr/talkman/dialog/f;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSEnabled(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f$a$b;->a:Lcom/nirenr/talkman/dialog/f$a;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/f$a;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/f;->e(Lcom/nirenr/talkman/dialog/f;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/f$a$b;->a:Lcom/nirenr/talkman/dialog/f$a;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/f$a;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/f;->e(Lcom/nirenr/talkman/dialog/f;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const v2, 0x7f07042f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    return-void
.end method
