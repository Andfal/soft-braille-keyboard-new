.class Lcom/androlua/LuaCameraView2$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaCameraView2;

.field final synthetic val$t:J

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/androlua/LuaCameraView2;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView2$7;->this$0:Lcom/androlua/LuaCameraView2;

    iput-object p2, p0, Lcom/androlua/LuaCameraView2$7;->val$text:Ljava/lang/String;

    iput-wide p3, p0, Lcom/androlua/LuaCameraView2$7;->val$t:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$7;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v0}, Lcom/androlua/LuaCameraView2;->m(Lcom/androlua/LuaCameraView2;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$7;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v0}, Lcom/androlua/LuaCameraView2;->n(Lcom/androlua/LuaCameraView2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$7;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v0}, Lcom/androlua/LuaCameraView2;->m(Lcom/androlua/LuaCameraView2;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaCameraView2$7;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$7;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v0}, Lcom/androlua/LuaCameraView2;->n(Lcom/androlua/LuaCameraView2;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaCameraView2$7;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$7;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v0}, Lcom/androlua/LuaCameraView2;->m(Lcom/androlua/LuaCameraView2;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaCameraView2$7;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v1}, Lcom/androlua/LuaCameraView2;->k(Lcom/androlua/LuaCameraView2;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$7;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v0}, Lcom/androlua/LuaCameraView2;->m(Lcom/androlua/LuaCameraView2;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaCameraView2$7;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v1}, Lcom/androlua/LuaCameraView2;->k(Lcom/androlua/LuaCameraView2;)Ljava/lang/Runnable;

    move-result-object v1

    iget-wide v2, p0, Lcom/androlua/LuaCameraView2$7;->val$t:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
