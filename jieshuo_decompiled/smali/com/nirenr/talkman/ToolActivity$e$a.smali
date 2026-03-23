.class Lcom/nirenr/talkman/ToolActivity$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ToolActivity$e;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ToolActivity$e;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ToolActivity$e;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ToolActivity$e$a;->a:Lcom/nirenr/talkman/ToolActivity$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/nirenr/talkman/ToolActivity$e$a;->a:Lcom/nirenr/talkman/ToolActivity$e;

    iget-object p2, p2, Lcom/nirenr/talkman/ToolActivity$e;->c:Lcom/nirenr/talkman/ToolActivity;

    invoke-static {p2}, Lcom/nirenr/talkman/ToolActivity;->b(Lcom/nirenr/talkman/ToolActivity;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/ToolActivity$e$a;->a:Lcom/nirenr/talkman/ToolActivity$e;

    iget-object v0, v0, Lcom/nirenr/talkman/ToolActivity$e;->a:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/androlua/LuaUtil;->rmDir(Ljava/io/File;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/ToolActivity$e$a;->a:Lcom/nirenr/talkman/ToolActivity$e;

    iget-object p1, p1, Lcom/nirenr/talkman/ToolActivity$e;->c:Lcom/nirenr/talkman/ToolActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/ToolActivity;->e(Lcom/nirenr/talkman/ToolActivity;)V

    return-void
.end method
