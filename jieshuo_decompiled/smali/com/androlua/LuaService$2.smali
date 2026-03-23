.class Lcom/androlua/LuaService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaService;->checkFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaService;


# direct methods
.method constructor <init>(Lcom/androlua/LuaService;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaService$2;->this$0:Lcom/androlua/LuaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/androlua/LuaService$2;->this$0:Lcom/androlua/LuaService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/androlua/LuaService;->a(Lcom/androlua/LuaService;Z)V

    return-void
.end method
