.class Lcom/nirenr/talkman/dialog/f$a$a;
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
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/nirenr/talkman/dialog/f$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/f$a;II)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/f$a$a;->c:Lcom/nirenr/talkman/dialog/f$a;

    iput p2, p0, Lcom/nirenr/talkman/dialog/f$a$a;->a:I

    iput p3, p0, Lcom/nirenr/talkman/dialog/f$a$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f$a$a;->c:Lcom/nirenr/talkman/dialog/f$a;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/f$a;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/f;->e(Lcom/nirenr/talkman/dialog/f;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSEnabled(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f$a$a;->c:Lcom/nirenr/talkman/dialog/f$a;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/f$a;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/f;->e(Lcom/nirenr/talkman/dialog/f;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/f$a$a;->c:Lcom/nirenr/talkman/dialog/f$a;

    iget-object v2, v2, Lcom/nirenr/talkman/dialog/f$a;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/f;->e(Lcom/nirenr/talkman/dialog/f;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/nirenr/talkman/dialog/f$a$a;->a:I

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Lcom/nirenr/talkman/dialog/f$a$a;->b:I

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const v1, 0x7f070430

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    return-void
.end method
