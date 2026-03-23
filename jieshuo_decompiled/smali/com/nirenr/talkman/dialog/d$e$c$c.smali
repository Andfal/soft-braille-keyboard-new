.class Lcom/nirenr/talkman/dialog/d$e$c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/d$e$c;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/nirenr/talkman/dialog/d$e$c;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/d$e$c;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/d$e$c$c;->b:Lcom/nirenr/talkman/dialog/d$e$c;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/d$e$c$c;->a:Landroid/app/AlertDialog;

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

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/d$e$c$c;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/d$e$c$c;->b:Lcom/nirenr/talkman/dialog/d$e$c;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/d$e$c;->a:Lcom/nirenr/talkman/dialog/d$e;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/d$e;->a:Lcom/nirenr/talkman/dialog/d;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/d;->c(Lcom/nirenr/talkman/dialog/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/dialog/d$e$c$c$a;

    invoke-direct {p2, p0, p3}, Lcom/nirenr/talkman/dialog/d$e$c$c$a;-><init>(Lcom/nirenr/talkman/dialog/d$e$c$c;I)V

    const-wide/16 p3, 0x1f4

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
