echo "If the plan exists, then apply it"
echo "Checking..."
if [ -f terraform.plan ]
  then
    echo "terraform.plan exists."
    ./terraform apply terraform.plan
fi
echo
echo "...done."
