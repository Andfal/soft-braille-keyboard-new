.class Lcom/androlua/LuaCameraView2$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaCameraView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaCameraView2;


# direct methods
.method constructor <init>(Lcom/androlua/LuaCameraView2;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView2$6;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$6;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v0}, Lcom/androlua/LuaCameraView2;->m(Lcom/androlua/LuaCameraView2;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$6;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v0}, Lcom/androlua/LuaCameraView2;->n(Lcom/androlua/LuaCameraView2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
