.class Lcom/androlua/LuaCameraView2$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/translate/TransApi$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaCameraView2$11;->onEnd(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/androlua/LuaCameraView2$11;

.field final synthetic val$nbest:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/androlua/LuaCameraView2$11;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView2$11$1;->this$1:Lcom/androlua/LuaCameraView2$11;

    iput-object p2, p0, Lcom/androlua/LuaCameraView2$11$1;->val$nbest:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransResult(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$11$1;->this$1:Lcom/androlua/LuaCameraView2$11;

    iget-object v0, v0, Lcom/androlua/LuaCameraView2$11;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v0, p1}, Lcom/androlua/LuaCameraView2;->s(Lcom/androlua/LuaCameraView2;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/androlua/LuaCameraView2$11$1;->this$1:Lcom/androlua/LuaCameraView2$11;

    iget-object p1, p1, Lcom/androlua/LuaCameraView2$11;->this$0:Lcom/androlua/LuaCameraView2;

    const v0, 0x7f070447

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/androlua/LuaCameraView2$11$1;->val$nbest:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/androlua/LuaCameraView2$11$1;->this$1:Lcom/androlua/LuaCameraView2$11;

    iget-object v0, p1, Lcom/androlua/LuaCameraView2$11;->this$0:Lcom/androlua/LuaCameraView2;

    iget-object p1, p1, Lcom/androlua/LuaCameraView2$11;->val$bytes:[B

    invoke-static {v0, p1}, Lcom/androlua/LuaCameraView2;->A(Lcom/androlua/LuaCameraView2;[B)V

    return-void
.end method
