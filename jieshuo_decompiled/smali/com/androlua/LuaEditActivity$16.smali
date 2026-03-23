.class Lcom/androlua/LuaEditActivity$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditActivity;->onOptionsItemSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaEditActivity;

.field final synthetic val$buf:Ljava/lang/StringBuilder;

.field final synthetic val$cls:[Ljava/lang/String;

.field final synthetic val$ss:[Z


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditActivity;[Ljava/lang/String;[ZLjava/lang/StringBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$16;->this$0:Lcom/androlua/LuaEditActivity;

    iput-object p2, p0, Lcom/androlua/LuaEditActivity$16;->val$cls:[Ljava/lang/String;

    iput-object p3, p0, Lcom/androlua/LuaEditActivity$16;->val$ss:[Z

    iput-object p4, p0, Lcom/androlua/LuaEditActivity$16;->val$buf:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/androlua/LuaEditActivity$16;->val$cls:[Ljava/lang/String;

    array-length p2, p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/androlua/LuaEditActivity$16;->val$ss:[Z

    aget-boolean p2, p2, p1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/androlua/LuaEditActivity$16;->val$buf:Ljava/lang/StringBuilder;

    const-string v0, "import \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/androlua/LuaEditActivity$16;->val$cls:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/androlua/LuaEditActivity$16;->this$0:Lcom/androlua/LuaEditActivity;

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iget-object p2, p0, Lcom/androlua/LuaEditActivity$16;->val$buf:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
