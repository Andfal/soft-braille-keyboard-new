.class Lcom/nirenr/talkman/dialog/e$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/e$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/nirenr/talkman/dialog/e$c;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/e$c;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/e$c$b;->b:Lcom/nirenr/talkman/dialog/e$c;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/e$c$b;->a:Landroid/app/AlertDialog;

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

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e$c$b;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e$c$b;->b:Lcom/nirenr/talkman/dialog/e$c;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/dialog/e$c$b$a;

    invoke-direct {p2, p0, p3}, Lcom/nirenr/talkman/dialog/e$c$b$a;-><init>(Lcom/nirenr/talkman/dialog/e$c$b;I)V

    const-wide/16 p3, 0x1f4

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
