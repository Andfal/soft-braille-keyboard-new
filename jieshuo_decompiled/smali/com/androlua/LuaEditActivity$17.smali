.class Lcom/androlua/LuaEditActivity$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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

.field final synthetic val$ss:[Z


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditActivity;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$17;->this$0:Lcom/androlua/LuaEditActivity;

    iput-object p2, p0, Lcom/androlua/LuaEditActivity$17;->val$ss:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$17;->val$ss:[Z

    aput-boolean p3, p1, p2

    return-void
.end method
