.class Lcom/androlua/LuaService$3;
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

    iput-object p1, p0, Lcom/androlua/LuaService$3;->this$0:Lcom/androlua/LuaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/androlua/LuaService$3;->this$0:Lcom/androlua/LuaService;

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/androlua/LuaService;->requestPermissions([Ljava/lang/String;)V

    return-void
.end method
