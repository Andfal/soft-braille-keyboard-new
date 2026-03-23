.class Lcom/androlua/LuaEditActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditActivity;->readFile(Ljava/io/InputStream;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaEditActivity;

.field final synthetic val$bs:[B


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditActivity;[B)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$9;->this$0:Lcom/androlua/LuaEditActivity;

    iput-object p2, p0, Lcom/androlua/LuaEditActivity$9;->val$bs:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Notify(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lv3/f;->a:Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHARSET = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaEditActivity$9;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {v0}, Lcom/androlua/LuaEditActivity;->b(Lcom/androlua/LuaEditActivity;)Landroid/widget/SplitEditView;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/androlua/LuaEditActivity$9;->val$bs:[B

    invoke-direct {v1, v2, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/SplitEditView;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$9;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {p1}, Lcom/androlua/LuaEditActivity;->b(Lcom/androlua/LuaEditActivity;)Landroid/widget/SplitEditView;

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/androlua/LuaEditActivity$9;->val$bs:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0}, Landroid/widget/SplitEditView;->setText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
