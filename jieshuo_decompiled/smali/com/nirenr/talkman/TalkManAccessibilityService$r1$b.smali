.class Lcom/nirenr/talkman/TalkManAccessibilityService$r1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService$r1;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaDialog;

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService$r1;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService$r1;Lcom/androlua/LuaDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$r1$b;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$r1;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$r1$b;->a:Lcom/androlua/LuaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$r1$b;->a:Lcom/androlua/LuaDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
