.class Lcom/nirenr/talkman/dialog/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/h;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/nirenr/talkman/dialog/h;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/h;II)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/h$c;->c:Lcom/nirenr/talkman/dialog/h;

    iput p2, p0, Lcom/nirenr/talkman/dialog/h$c;->a:I

    iput p3, p0, Lcom/nirenr/talkman/dialog/h$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/h$c;->c:Lcom/nirenr/talkman/dialog/h;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/h;->e(Lcom/nirenr/talkman/dialog/h;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget v1, p0, Lcom/nirenr/talkman/dialog/h$c;->a:I

    iget v2, p0, Lcom/nirenr/talkman/dialog/h$c;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->click(II)Z

    return-void
.end method
